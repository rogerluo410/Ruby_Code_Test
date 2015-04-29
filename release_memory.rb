require 'objspace'
require "weakref"

big_var = ""
puts "memory size: #{ObjectSpace.memsize_of big_var}"

big_var = 1_000_000.times.map(&:to_s)
puts "memory size: #{ObjectSpace.memsize_of big_var}"

big_var = WeakRef.new(big_var)
GC.start

puts "memory size: #{ObjectSpace.memsize_of big_var}"
