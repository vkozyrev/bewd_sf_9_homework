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

def print_bottles (bottles)
  puts %{#{bottles} bottles of beer on the wall
#{bottles} of beer!
You take one down and pass it around,
}
  if bottles - 1 == 0
    puts "No more bottles of beer on the wall :-("
  else
    puts "#{bottles - 1} bottles of beer on the wall"
  end
  puts
end

(1..99).reverse_each { |bottles| print_bottles bottles }