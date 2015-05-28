require 'pry'
require 'pry-byebug'

require_relative './person'
require_relative './secret_number'

# Game
#	This class holds most of the game logic and should:
#		Welcome players and inform them of the game rules.
#		Initialize the Player class.
# 		Initialize the Secret Number class.
# 		Prompt the user to choose a number, verify if the user guessed correctly.
# 		If the user guesses incorrectly let them know if they were too high or too low.
#		Monitor how many guesses the player has before the game is over.


class Game
# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly
  attr_accessor :secret_number, :player, :guesses, :guess

  def initialize(player, difficulty)
    @secret = SecretNumber.new(difficulty)
    @player = Person.new(player)
    @guesses = 3
    @guess = 0
  end

  def play_new_game
    puts "Welcome to the game! You have 3 chances to guess a number from 1 to #{@secret.max}."

    while @guesses != 0
      check_guess
      break if @guess == @secret.number
    end
  end

  def check_guess
    puts "Ready, set, guess: "
    @guess = gets.to_i
    @guesses -= 1
    if guess == @secret.number
      puts "YAY #{@player.name}, YOU WIN!"
    elsif guess < @secret.number && guesses > 0
      puts "Your guess was too low. Guess again, #{@player.name}. You have #{@guesses} guesses left, so be careful! "
    elsif guess > @secret.number && guesses > 0
      puts "Your guess was too high. Guess again, #{@player.name}. You have #{@guesses} guesses left, so be careful!"
    else
      puts "Womp womp. Game over. The number was #{@secret.number}. Play again if you dare, #{@player.name}!"
    end
  end


end
