###############################################################################
#
# Object Oriented Secret Number
#
# Read the hints below and complete this file. This Lab
# is to practice your knowledge of object oriented programming.
#
###############################################################################
# Lets create an Object Oriented version of our Secret Number Game.
#
# Your updated game should have 4 classes (Main, SecretNumber, Game and Player)
#
# Below is a description of each class and some guidelines for each.
#
# Main
#	The main class is where the game begins. This class should tell the player who made it.
#	Ask the player for their name and instantiate the Game class.
#
# SecretNumber
#   This class should initiate an array of numbers that range between 1 - 10.
#   Use a method from the array class to select a random element from that array. This random number will be the secret number.
#   Use array.samples to select the secret number and assign it to a secret_number variable
#   This way the secret number is also a secret to you.
#
# Player
#  Should initialize the player's name.
#  Use gets.strip to get the player's name and assign it to the instance variable name
#
# Game
#	This class holds most of the game logic and should:
#		Welcome players and inform them of the game rules.
#		Initialize the Player class. - instantiate a player
#   Initialize the Secret Number class. - instantiate the secret number game
# 		Prompt the user to choose a number, verify if the user guessed correctly.
#     Use gets.strip and == it to the secret number
# 		If the user guesses incorrectly let them know if they were too high or too low.
#		#Do this part last - it seems like the hardest! Monitor how many guesses the player has before the game is over. #  Feed each guess into an array and use array.count to show the total number of guesses before the player gets it right
#
# In creating your game, make sure it has arrays, hashes and all functionality is wrapped in methods.
# Add helpful comments to your code to document what each section does.
#
# Tips: Copy paste your code from homework 1 where necessary.
require 'pry'
require 'pry-byebug'
# require_relative 'lib/game.rb'
require_relative 'lib/person'
require_relative 'lib/secret_number'
require_relative 'lib/game'

puts "Welcome to the secret number game! \n This game was created by Brennan Gamwell for BEWD-SF 9 at General Assembly. \n Have fun!"

def get_new_person
  puts "Tell us your name so we know who's playing."

  new_person = gets.strip

  puts "Awesome, thank you #{new_person}!"

  current_player = Person.new(new_person) #This creates a new class of player for the game

  puts "Get ready to have more fun than you've ever had in your life, #{new_person}."
end

def new_game
  puts "Make your guess!"

  player_guess = gets.strip.to_i

  guess = Game.new(player_guess)
  return guess

end

get_new_person #calls the method get_new_person

puts "*****Now it's time to play!*****"

new_guess = new_game #calling an instance of a new game

secret_number = SecretNumber.create_number_instance

if new_guess == secret_number
  puts "Congrats, you did it!"
elsif
  new_guess > secret_number
  puts "You guessed too high!"
elsif new_guess < secret_number
  puts "You guessed too low. Try again!"
end

# put code here print a welcome message for your user
#	The main class is where the game begins. This class should tell the player who made it.
#	Ask the player for their name and instantiate the Game class.

# put code here ask the user for their name, and save it

# put code here to create a new game, and start it
