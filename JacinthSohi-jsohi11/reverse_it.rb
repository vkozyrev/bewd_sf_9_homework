require 'pry'
require 'pry-byebug'

#Reverse It
# 1 - Create a method that reverses a string, without using the .reverse method 
# 2 - Create another method that tests whether that word is a palindrome

def my_reverse(string)
	characters = string.downcase.chars
	reversed_string = ""
	until characters.empty? == true
		reversed_string << characters.pop
	end
	return reversed_string
end

def is_palindrome?(word)
  if word.downcase == my_reverse(word).downcase
  	puts "Yep! This is a palindrome."
  else
  	puts "Nope, not a palindrome."
  end
end

puts "Please provide a word \n"
word = gets.chomp

puts my_reverse(word)
puts is_palindrome?(word)

