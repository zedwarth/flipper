#!/usr/bin/env ruby
require_relative 'randbeacon'

puts "The time is now: #{Time.now}"

puts "RandBeacon.now: #{RandBeacon.now}"
puts "RandBeacon.previous: #{RandBeacon.previous}"
puts "RandBeacon.next: #{RandBeacon.next}"
puts "RandBeacon.last: #{RandBeacon.last}"

puts "The time is now: #{Time.now}"
