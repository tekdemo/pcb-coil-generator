
require './eagle.rb'
require 'pp'

width = 6 * 0.0254
spacing = 6 * 0.0254
pitch = width + spacing

start = 50 * 0.0254
coils = 2


x=pitch
y=0
# steps = [  [0,1], [-1,0], [0,-1], [1,0],]
steps = (0..360).step(90).take(4).map{|a|a+135}.map{|a|a * Math::PI / 180}.map{|a| [Math::cos(a),Math::sin(a)] }

# generate the rotations for all 4 layers

STDERR.puts steps.pretty_inspect,steps.size
path=[]

path << steps.last.map{|v| v*start }
# path << [start,0]
STDERR.puts path.inspect

# Generate most of the points
(1..coils).step(1) do |c|
  path += steps.map{|s| s.map{|v|v*pitch*c + v*start}}
end

STDERR.puts path.pretty_inspect

puts HEAD
path.each_cons(2).map do |s,e|
  puts format WIRE_BEND, *s,*e,width,1,90
end
    
puts FOOT


