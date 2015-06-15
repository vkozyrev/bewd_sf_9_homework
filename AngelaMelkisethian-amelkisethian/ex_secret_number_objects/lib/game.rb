require_relative './person'
require_relative './secret_number'

class Game
# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly
attr_accessor :player, :secret_number, :guess, :guesses

def initialize(name)
    @player = Person.new(name)
    @secret_number = SecretNumber.new
    @guess = guess
    @guesses = 3
    end
end

def self.start_game
	  puts welcome_message
	  puts "Starting the game..."
    sleep 1
    game_loop
end

def welcome_message
    puts "Welcome to the best game on earth! Written and directed by A. Melkisethian! "\
	  "The rules are simple. You have 3 chances to guess the secret number."
	  "If you win, prepare to be showered with all the world's riches. "\
	  "If you lose, you'll be banished to an island made of trash. Good luck!"
end

def game_loop
	puts "Please type a number between 1-10:"
	guesses = []
  guess = gets.chomp.to_i

  while guesses.count < 2 && guess != SecretNumber.new.secret_number
  puts "You are a pathetic loser! #{guess} is not the secret number. Try again."
  guess = gets.chomp.to_i
  guesses << guess
  end

  if guess == SecretNumber.new.secret_number
  puts "#{guess} is the secret number! You are a triumphant god!"

  elsif guess != SecretNumber.new.secret_number
  puts "#{guess} is not the secret number. Sorry, no more tries sucker!"
  end
end
