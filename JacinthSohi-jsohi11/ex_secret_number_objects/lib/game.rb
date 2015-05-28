# Game
#	This class holds most of the game logic and should:
#		Welcome players and inform them of the game rules.
#		Initialize the Player class.
# 		Initialize the Secret Number class.
# 		Prompt the user to choose a number, verify if the user guessed correctly.
# 		If the user guesses incorrectly let them know if they were too high or too low.
#		Monitor how many guesses the player has before the game is over.
#
# In creating your game, make sure it has arrays, hashes and all functionality is wrapped in methods.
# Add helpful comments to your code to document what each section does.

# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly

require 'pry'
require 'pry-byebug'
require_relative 'person'
require_relative 'secret_number'

class Game 
	attr_accessor :player, :top_number, :secret_number

	def initialize(player, top_number)
		@player = Person.new(player)
		@top_number = top_number
		@secret_number = SecretNumber.new(top_number).secret_number
	end

	def play_game
		puts "Pick a number between 1 and #{top_number}:"
		number_guess = gets.strip.to_i
		while number_guess != @secret_number
			if number_guess < @secret_number
				number_guess = pick_higher(number_guess)
			elsif number_guess > @secret_number
				number_guess = pick_lower(number_guess)
			end
		end
		if number_guess == @secret_number
			puts "Congrats, you got the secret number correct! It's #{@secret_number}. You win the game!"
		end
	end

	def pick_higher(number_guess)
		puts "Nope, #{number_guess} is too low! Guess again!"
		number_guess = gets.strip.to_i
		return number_guess
	end

	def pick_lower(number_guess)
		puts "Sorry, #{number_guess} is too high! Guess a different number!"
		number_guess = gets.strip.to_i
		return number_guess
	end
end


