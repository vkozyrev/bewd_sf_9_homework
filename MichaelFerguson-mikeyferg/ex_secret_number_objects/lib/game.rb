require_relative 'person'
require_relative 'secret_number'
require 'pry'
require 'pry-byebug'

class Game
# this class will be complexå
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly
  attr_accessor :secret_num, :user_num, :guesses, :player

  def initialize(player)
    @secret_num = SecretNumber.new().rand_num
    @user_num = nil
    @guesses = 0
    @player = player
  end

  def pick_num
    puts "Please guess a number!"
    @user_num = gets.chomp.to_i
    @guesses += 1
  end

  def start
    player.print_name if @guesses < 1
    pick_num
    puts "secret_num is #{secret_num}"
    puts "user_num is #{user_num}"
    puts "guesses is #{guesses}"
    if @secret_num == @user_num
       puts "Good guess #{player.name}.  You are correct.  The secret_number is #{secret_num}.  It took you #{guesses} guesses."
    elsif @secret_num < @user_num
      puts "Too high.  Guess again"
      start
    else
      puts "Too low.  Guess again."
      start
     end
  end
end
