require './eagle.rb'
require './gerber.rb'
require './units.rb'
require 'pp'

# Configure the coil setup, in mil
width = 5
spacing = 5
drillsize = 10
annular = 5


start = 40
coils = 2
numlayers = 4

# Crunch some numbers and get constants
arc_segments=60.0
pitch = width.to_f + spacing.to_f
angle_res = Math::PI*2/arc_segments
rdiff = pitch.to_f / arc_segments.to_f

# working variables
radius = start
layers = [[]]
vias = []


# .zip( (0...numlayers).to_a)
# .map{|c|c.first + c.last*coils}
breakpoints = [0,90,180,270]
  .map{|c|c-45}
  .each_with_index.map{|c,i|c+360*coils*i}
  .map{|c|c*Math::PI/180.0}

# (0..(numlayers*coils*2*Math::PI)).step(angle_res) do |angle|
#   layers.last << [ Math::cos(angle), Math::sin(angle) ].map{|c|c*radius}
#   if breakpoints.any? and angle > breakpoints.first
#     breakpoints.shift
#     # Step the via out of the coil if we need to
#     jog = drillsize/2.0 + annular - width/2.0
#     jog = 0 if width/2.0 > jog
#     layers.last << [ Math::cos(angle), Math::sin(angle) ].map{|c|c*(radius + jog) }
#     vias << layers.last.last
#     # Switch to the next layer of the coil
#     layers << []
#     layers.last << [ Math::cos(angle), Math::sin(angle) ].map{|c|c*(radius + jog) }
#     radius = start
#     layers.last << [ Math::cos(angle), Math::sin(angle) ].map{|c|c*(radius - jog) }
#     vias << layers.last.last

#     # restart the winding
#   else
#     radius += rdiff
#   end
# end

layers  = [[]]*numlayers

# Generate the windings
layers = layers.each_with_index.map do |layers,i|
  path = (0..(coils*2*Math::PI)).step(angle_res).to_a
  path = path.each_with_index.map do |angle,j|
    radius += i.even? ? rdiff : -rdiff if j > 0
    c=[ Math::cos(angle), Math::sin(angle) ].map{|c|c*radius}
    c
  end
end

# Add a lead-in and lead out
begin
  jog = drillsize/2.0 + annular - width/2.0
  jog = 0 if width/2.0 > jog
  x = (start + coils*pitch) + spacing + width/2.0 + annular + drillsize/2
  y = spacing/2.0 + annular + drillsize/2.0

  # Account for vias from middle layers
  if numlayers > 2
    ymod = spacing + annular + drillsize/2.0
    layers.first.push [layers.first.last.first,ymod]
    layers.last.unshift [layers.first.last.first,-ymod]
    y += ymod
  end

  # Add lead in to coil
  layers.first.push [x,y]
  vias << [x,y]
  # Add the lead out
  layers.last.unshift [x,-y]
  vias << [x,-y]
end

# connect the layers together
layers.each_cons(2).each_with_index do |l,i|
  a,b=l
  x = a.first.first
  xoffset = drillsize/2.0 + annular + width/2.0 + spacing
  y = drillsize/2.0 + spacing/2.0 + annular
  
  case i
  when 0
    # y = offset
    x += -xoffset 
  when 1
    # x = xoffset
    x += xoffset
    y = 0
  when 2
    x += -xoffset 
    y = -y
  else
    next
  end
  a.unshift [x,y]
  b.push [x,y]
  vias << [x,y]
end

layerids=[1,16]
layerids = [1,2,15,16] if layers.size == 4

layers.zip(layerids).map do |layer,id|
  File.open("coil.#{id}.ger","w") do |f|
    f.puts GER_HEADER
    f.puts format GER_APERTURE, 10, width.mil.to_in
    f.puts format GER_APERTURE, 11, drillsize.mil.to_in + 2*annular.mil.to_in
    # f.puts format GER_APERTURE, 11, width.mil.to_in/2.0+1.mil.to_in
    f.puts format GER_AP_SELECT,10
    f.puts format GER_XY,*layer.first.map{|c|c*10},2
    layer.each do |xy|
      f.puts format GER_XY,*xy.map{|c|c*10},1
    end
    f.puts format GER_AP_SELECT,11
    vias.each do |via|
      p via
      f.puts format GER_XY,*via.map{|c|c*10},3
    end
    f.puts GER_FOOTER
  end
end
vias.tap do |layer|
  File.open("coil.0.xln","w") do |f|
    f.puts GER_HEADER
    f.puts format GER_APERTURE, 10, drillsize.mil.to_in
    f.puts format GER_AP_SELECT,10
    layer.each do |xy|
      f.puts format GER_XY,*xy.map{|c|c*10},3
    end
    f.puts GER_FOOTER
  end
end

`gerbv -x png -o coil.png -D4000 -a *xln *ger`


File.open("coil.brd","w") do |f|
    f.puts EAGLE_HEADER

  # f.puts vias.map{|xy| format "X%iY%iD03*", *xy.map{|c|c*10}.map{|c|c.to_i} }

  puts layerids: layerids.inspect
  puts layer_sizes: layers.map(&:size).inspect
  layers.each do |layer|
    f.puts layer.each_cons(2)
      .map{|a,b| format WIRE, *[*a,*b].map{|c|c.mil.to_mm},width.mil.to_mm,layerids.first.to_i }
    layerids.shift
  end
  vias.each do |via|
    p vias
    f.puts format VIA_PAD, *[*via, drillsize, (annular+drillsize)/2 ].map{|c|c.mil.to_mm}
  end

  f.puts EAGLE_FOOTER
end