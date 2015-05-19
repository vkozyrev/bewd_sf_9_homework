require 'pry'
require 'pry-byebug'

#CLASS - LAB TIME & HOMEWORK

# Write a program that prints 99 bottles of beer on the wall.
# The song starts with
# 99 bottles of beer on the wall
# 99 bottles of beer!
# You take one down and pass it around,
# 98 bottles of beer on the wall!
#
# And ends with
# 1 bottle of beer on the wall
# 1 bottle of beer!
# You take one down and pass it around,
# No more bottles of beer on the wall :-(

num = 99.downto(3) do |j|
puts j.to_s + " bottles of beer on the wall,"
puts j.to_s + " bottles of beer,"
puts "take one down and pass it around,"
num = j - 1
puts num.to_s + " bottles of beer on the wall."
end
puts "1 bottle of beer on the wall"
puts "1 bottle of beer"
puts "take one down and pass it around"
puts "no more bottles of beer on the wall :-("
