
# Lets create an Object Oriented version of our Secret Number Game.
# Your updated game should have 4 classes (Main, SecretNumber, Game and Player)
# Below is a description of each class and some guidelines for each.
#
# Main
#	The main class is where the game begins. This class should tell the player who made it.
#	Ask the player for their name and instantiate the Game class.
#
# In creating your game, make sure it has arrays, hashes and all functionality is wrapped in methods.
# Add helpful comments to your code to document what each section does.
#
# Tips: Copy paste your code from homework 1 where necessary.
require 'pry'
require 'pry-byebug'
require_relative 'lib/game'
require_relative 'lib/person'
require_relative 'lib/secret_number'

# put code here print a welcome message for your user
puts "Welcome to the secret number game!"

# put code here ask the user for their name, and save it
puts "What is your name?"
player_name = gets.strip.capitalize
puts "What difficulty level would you like? Choose '1', '2', or '3'"
difficulty = gets.to_i
# put code here to create a new game, and start it
new_game = Game.new(player_name, difficulty)
new_game.play_new_game
