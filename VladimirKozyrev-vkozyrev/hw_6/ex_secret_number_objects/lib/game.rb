require_relative './person'
require_relative './secret_number'

class Game
# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly
  attr_accessor :secret_number, :user, :guesses, :input

  def initialize(player_name)
    @secret_number = SecretNumber.new
    @user = Person.new(player_name)
    @guesses = 4
  end

  def start
    puts "Starting Game."

    while @guesses > 0
      get_input
      check_number
      break if !continue?
      @guesses -= 1
    end
  end

  def get_input
    puts "Please enter a number between 1 and 10: "
    @input = gets.chomp.to_i
  end

  def check_number
    if @guesses - 1 == 0
      puts "No more guesses! You loose!"
    else
      if @input < @secret_number.number
        puts "Too Low! You have #{@guesses - 1} left!"
      elsif @input > @secret_number.number
        puts "Too High! You have #{@guesses - 1} left!"
      else
        puts "Congrats! #{@input} was the correct answer!"
      end
    end
  end

  def continue?
    return @secret_number.number != @input
  end
end
