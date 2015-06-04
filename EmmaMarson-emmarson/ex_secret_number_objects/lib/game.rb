require "pry"
require './person'
require './secret_number'

class Game
# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly
	attr_accessor :player, :secret_number

	def initialize(player_name)
		@player = Person.new(player_name)
		@secret_number = SecretNumber.new
		check_number
	end
	
	def check_number
		puts "Please enter a number between 1 and 10."
		user_number = gets.strip
		win_number = @secret_number.random_number
		while user_number.to_i != win_number
			if user_number.to_i > win_number
				puts "Too high, try again!"
				user_number = gets.strip
			elsif user_number.to_i < win_number
				puts "Too low, try again!"
				user_number = gets.strip
			end
		end
		puts "You win!"
	end
end

game = Game.new("Bianca")