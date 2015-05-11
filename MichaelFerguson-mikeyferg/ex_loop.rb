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




# using while loop

# bottles_of_beer = 99
# while bottles_of_beer >= 0
#   if bottles_of_beer > 1
#     puts "#{bottles_of_beer} bottles of beer on the wall \n #{bottles_of_beer} bottles of beer! \n You take one down and pass it around, #{bottles_of_beer -1} bottles of beer on the wall!"
#
#   elsif bottles_of_beer == 1
#       puts "#{bottles_of_beer} bottle of beer on the wall \n #{bottles_of_beer} bottle of beer! \n You take one down and pass it around, No more bottles of beer on the wall :-("
#   end
#   bottles_of_beer -= 1
# end


#down_to method
# 99.downto(1) do |bottles_of_beer|
#   if bottles_of_beer > 1
#     puts "#{bottles_of_beer} bottles of beer on the wall \n #{bottles_of_beer} bottles of beer! \n You take one down and pass it around, #{bottles_of_beer -1} bottles of beer on the wall!"
#   elsif bottles_of_beer == 1
#     puts "#{bottles_of_beer} bottle of beer on the wall \n #{bottles_of_beer} bottle of beer! \n You take one down and pass it around, No more bottles of beer on the wall :-("
#   end
# end

#reverse_each method
(1..99).reverse_each do |bottles_of_beer|
  if bottles_of_beer > 1
    puts "#{bottles_of_beer} bottles of beer on the wall \n #{bottles_of_beer} bottles of beer! \n You take one down and pass it around, #{bottles_of_beer -1} bottles of beer on the wall!"
  elsif bottles_of_beer == 1
    puts "#{bottles_of_beer} bottle of beer on the wall \n #{bottles_of_beer} bottle of beer! \n You take one down and pass it around, No more bottles of beer on the wall :-("
  end
end
