require './eagle.rb'
require './units.rb'
require 'pp'

# Configure the coil setup, in mil
width = 5
spacing = 5
drillsize = 10
annular = 5


start = 40
coils = 5
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
p break_angles: breakpoints.map{|a|a/Math::PI*180}

(0..(numlayers*coils*2*Math::PI)).step(angle_res) do |angle|
  layers.last << [ Math::cos(angle), Math::sin(angle) ].map{|c|c*radius}
  if breakpoints.any? and angle > breakpoints.first
    breakpoints.shift
    # Step the via out of the coil if we need to
    jog = drillsize/2.0 + annular - width/2.0
    jog = 0 if width/2.0 > jog
    layers.last << [ Math::cos(angle), Math::sin(angle) ].map{|c|c*(radius + jog) }
    vias << layers.last.last
    # Switch to the next layer of the coil
    layers << []
    layers.last << [ Math::cos(angle), Math::sin(angle) ].map{|c|c*(radius + jog) }
    radius = start
    layers.last << [ Math::cos(angle), Math::sin(angle) ].map{|c|c*(radius - jog) }
    vias << layers.last.last

    # restart the winding
  else
    radius += rdiff
  end
end


GER_HEAD=<<GER
G04 This is an RS-274x file exported by *
G04 gerbv version 2.6A *
G04 More information is available about gerbv at *
G04 http://gerbv.geda-project.org/ *
G04 --End of header info--*
%MOIN*%
%FSLAX34Y34*%
%IPPOS*%
G04 --Define apertures--*
%ADD10C,0.002*%
%ADD11C,0.003*%
%ADD12C,0.004*%
%ADD13C,0.005*%
GER

GER_FOOT=<<GER
M02*
GER


File.open("coil.ger","w") do |f|
  f.puts GER_HEAD
  f.puts "G04 Via pads *"
  puts pad: (2*annular+drillsize).mil.to_in
  f.puts format "%%ADD%sC,%.4f*%%",10,(2*annular+drillsize).mil.to_in
  
  f.puts "G04 Traces *"
  layers.each_with_index do |layer,i|
    f.puts format "%%ADD1%sC,%.4f*%%",i+11,width.mil.to_in
  end

  f.puts "G04 Vias *"
  f.puts "G54D10*"
  f.puts vias.map{|xy| format "X%iY%iD03*", *xy.map{|c|c*10}.map{|c|c.to_i} }

  f.puts "G04 Line segments *"
  layers.each_with_index do |layer,i|
    f.puts format "G54D%s*",i+11
    str = layer.map{ |xy| format "X%iY%iD01*", *xy.map{|c|c*10}.map{|c|c.to_i} }
    str.first.gsub!("D02","D01")
    f.puts str
  end

  f.puts GER_FOOT
end

File.open("coil.brd","w") do |f|
  f.puts EAGLE_HEADER

  # f.puts vias.map{|xy| format "X%iY%iD03*", *xy.map{|c|c*10}.map{|c|c.to_i} }

  layerids = (1..numlayers+1).step(1).to_a + [16]

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