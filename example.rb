$LOAD_PATH << "."

require 'mars_dist'
require 'orbit_image'
require 'orbit_data'

d = MarsDistance.calculate

puts
puts "Distance to Mars is:"
puts "     #{d[:miles]} miles"
puts "  or #{d[:km]} kilometers"
puts "  or #{d[:light_minutes]} light-minutes"

edeg, mdeg = OrbitalCalculations.calculate
edeg, mdeg = edeg.round(1), mdeg.round(1)

puts
puts "Relative positions of Earth and Mars: #{edeg} degrees, #{mdeg} degrees"

img = "earthmars.jpg"
puts
puts "Now drawing a picture (see #{img})"

EarthMarsOrbits.make_image(edeg, mdeg, "earthmars.jpg")
puts
