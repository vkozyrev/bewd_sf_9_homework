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

def print_lirycs(number_of_bottles)
	bottle_pluralize = (number_of_bottles - 1 <= 1) ? "bottle" : "bottles"
	if ( number_of_bottles > 0 )
		puts "#{number_of_bottles} #{bottle_pluralize} of beer on the wall"
		puts "#{number_of_bottles} #{bottle_pluralize} of beer!"
		puts "You take one down and pass it around,"
		puts "#{number_of_bottles - 1} #{bottle_pluralize} of beer!\n\n" unless number_of_bottles == 1
	else
		puts "No more bottles of beer on the wall :-("
	end

end

bottles = 99
(0..bottles).reverse_each { |bottle| print_lirycs(bottle) }