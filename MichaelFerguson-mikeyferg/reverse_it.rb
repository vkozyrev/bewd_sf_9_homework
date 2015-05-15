require 'pry'
require 'pry-byebug'

#Reverse It
# 1 - Create a method that reverses a string, without using the .reverse method
# 2 - Create another method that tests whether that word is a palindrome

def my_reverse(string)
  string_array = string.split("")
  reverse_string_array = []
  string_array.each { |letter| reverse_string_array.unshift(letter) }
  return reverse_string_array.join("")
end

def is_palindrome?(word)
  if word == my_reverse(word)
    puts "Is a palindrome"
  else
    "Is not palindrome"
  end
end

puts "Please provide a word \n"
word = gets.chomp

puts my_reverse(word)
puts is_palindrome?(word)
