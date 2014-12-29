#!/usr/bin/env ruby
require_relative 'randbeacon'

def flip
	if RandBeacon.now.hex.even?
		puts "Heads!"
	else
		puts "Tails!"
	end
end

puts "Flipping a coin using the lastest RandBeacon Number!"
flip
