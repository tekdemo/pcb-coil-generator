require './eagle.rb'
require './kicad.rb'
require './gerber.rb'
require './units.rb'
require 'pp'

# Configure the coil setup, in mil
width = 6
spacing = 6
drillsize = 10
annular = 5

inner_diameter = 200
coils = 5
numlayers = 4

# Crunch some numbers and get constants
arc_segments=60.0
pitch = width.to_f + spacing.to_f
angle_res = Math::PI*2/arc_segments
rdiff = pitch.to_f / arc_segments.to_f

# working variables
radius = inner_diameter/2.0
layers = [[]]
vias = []
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
  x = (radius + coils*pitch) + spacing + width/2.0 + annular + drillsize/2
  y = spacing/2.0 + annular + drillsize/2.0

  # Account for vias from middle layers, if any
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
  
  # This works great for 4 layers
  case i
  when 0
    if layers.size == 2
      y = 0 
      x -=  drillsize/2.0 + annular - width/2
    else
      x += -xoffset 
    end
  when 1
    x += xoffset
    y = 0
  when 2
    x += -xoffset 
    y = -y
  else
    raise NotImplementedError, "Sorry, didn't care enough to do anything other than 2 or 4 layers"
  end

  a.unshift [x,y]
  b.push [x,y]
  vias << [x,y]
end

layers.each_with_index do |layer,id|
  File.open("coil.#{id}.ger","w") do |f|
    f.puts GER_HEADER
    f.puts format GER_APERTURE, 10, width.mil.to_in
    f.puts format GER_APERTURE, 11, drillsize.mil.to_in + 2*annular.mil.to_in
    f.puts format GER_AP_SELECT,10
    f.puts format GER_XY,*layer.first.map{|c|c*10},2
    layer.each do |xy|
      f.puts format GER_XY,*xy.map{|c|c*10},1
    end
    f.puts format GER_AP_SELECT,11
    vias.each do |via|
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

# Generate a preview of the gerbers
`gerbv -x png -o coil.png -D600 -a *xln *ger`

# Generate some Eagle files.
begin 
  layerids=[1,16]
  layerids = [1,2,15,16] if layers.size == 4

  # Wiring is the same everywhere. 
  wires= layers.map do |layer|
    layerid = layerids.shift
    layer.each_cons(2)
    .map{|a,b| format WIRE, *[*a,*b,width].map{|c|c.mil.to_mm},layerid.to_i }
  end
  
  File.open("coil.brd","w") do |f|
    f.puts BRD_HEADER
    f.puts wires
    vias.each_with_index do |via,i|
      f.puts format VIA_PAD, *[*via, drillsize, (annular+drillsize)/2 ].map{|c|c.mil.to_mm}
    end
    f.puts BRD_FOOTER
  end

  File.open("coil.lbr","w") do |f|
    package = []

    package += vias.each_with_index.map do |via,i|
      mask = i<2 ? "yes" : "no"
      format LBR_PAD,"P$#{i+1}",*[*via,drillsize].map{|c|c.mil.to_mm},mask
    end
  
    package += wires
    package = format LBR_PACKAGE , "COIL_SAMPLE", package.join("\n")
    f.puts format LBR_FILE, package
  end
end

File.open("coil.kicad_pcb","w") do |f|
  f.puts format KICAD_HEADER, layers.size == 4 ? KICAD_LAYER_STRING_4 : KICAD_LAYER_STRING_2

  layers.each_with_index do |layer,i|
    layer.each_cons(2) do |a,b|
      layername = layers.size == 4 ? KICAD_LAYERS_4[i] : KICAD_LAYERS_2[i]
      layername = layername[1]
      f.puts format(KICAD_WIRE, *[*a,*b,width].map{|c|c.mil.to_mm}, layername)
    end
  end

  vias.each_with_index do |via,i|
    f.puts format KICAD_VIA, *[*via, drillsize ,(annular+drillsize)/2].map{|c|c.mil.to_mm}
  end
  f.puts KICAD_FOOTER

end