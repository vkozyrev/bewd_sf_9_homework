require 'pry'
require 'pry-byebug'

def my_reverse(string)
  word = ""
  (string.length - 1).downto(0).each do |index|
    word << string[index]
  end
  word
end

def is_palindrome?(word)
  if word.downcase == my_reverse(word).downcase
    "This is Palindrome!"
  else
    "Not A Palindrome"
  end
end

#####
puts "Please provide a word \n"
word = gets.chomp

puts my_reverse(word)
puts is_palindrome?(word)
