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
numlayers = 2

# Crunch some numbers and get constants
arc_segments=10.0
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

layers = layers.each_with_index.map do |layers,i|
  path = (0..(coils*2*Math::PI)).step(angle_res).to_a
  # path.reverse! if index.even?
  path = path.each_with_index.map do |angle,j|
    radius += i.even? ? rdiff : -rdiff if j > 0
    c=[ Math::cos(angle), Math::sin(angle) ].map{|c|c*radius}
    c
  end
  # radius  = start
  # radius += rdiff
  path
end

File.open("coil.brd","w") do |f|
  f.puts EAGLE_HEADER

  # f.puts vias.map{|xy| format "X%iY%iD03*", *xy.map{|c|c*10}.map{|c|c.to_i} }

  # layerids = (1..16).step(1).to_a

  layerids=[1,16]
  layerids = [1,2,15,16] if layers.size == 4

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