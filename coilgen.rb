require './eagle.rb'
require 'pp'


width = 10 # * 0.0254
spacing = 6 #* 0.0254
pitch = width + spacing


start = 20 #* 0.0254
coils = 4

arc_segments=40.0
angle_res = Math::PI*2/arc_segments
radius = start

layers = [[]]

rdiff = pitch.to_f / arc_segments

p pitch: pitch
p rdiff: rdiff

(0..(coils*2*Math::PI)).step(angle_res) do |angle|
  radius += rdiff
  layers.last << [ Math::cos(angle), Math::sin(angle) ].map{|c|c*radius}
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
GER

GER_FOOT=<<GER
M02*
GER


File.open("coil.ger","w") do |f|
  f.puts GER_HEAD
  layers.each do |layer|
    f.puts format "%%ADD10C,%.4f*%%", width/1000.0
    f.puts "G54D10*"
    str = layer.map{ |xy| format "X%iY%iD01*", *xy.map{|c|c*10}.map{|c|c.to_i} }
    str.first.gsub!("D02","D01")
    f.puts str
  end

  f.puts GER_FOOT
end