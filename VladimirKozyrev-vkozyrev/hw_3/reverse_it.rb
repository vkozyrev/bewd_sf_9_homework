require 'pry'
require 'pry-byebug'

#Reverse It
# 1 - Create a method that reverses a string, without using the .reverse method
# 2 - Create another method that tests whether that word is a palindrome

def my_reverse(string)
  #use some sort of looping here
  reversed_string_array = []
  string_array = string.each_char do |char|
    reversed_string_array.unshift char
  end
  reversed_string_array.join
end

def is_palindrome?(word)
  for i in 0...(word.size / 2)
    if word[i] != word[word.size - 1 - i]
      return false
    end
  end
  true
end

puts "Please provide a word \n"
word = gets.chomp

puts "Reverse: " + my_reverse(word)
puts "Is Palindrome: " + is_palindrome?(word).to_s