require 'pry'
require 'pry-byebug'

#Reverse It
# 1 - Create a method that reverses a string, without using the .reverse method
# 2 - Create another method that tests whether that word is a palindrome

def my_reverse(string)
  #use some sort of looping here
  # word = string.chars
  # reversed_word = []
  # for letter in word
  #   reversed_word = word.pop
  # end
  # puts reversed_word
  char = string.downcase.chars
  word = ""
  until char.length == 0
    word << char.pop
  end
  word.capitalize
end

def is_palindrome?(word)
  #use a conditional here
  if word.downcase == my_reverse(word).downcase
    puts "it's a palindrome!"
  else
    puts "shucks! not a palindrome!"
  end
end

puts "Please provide a word \n"
word = gets.chomp

puts my_reverse(word)
puts is_palindrome?(word)
