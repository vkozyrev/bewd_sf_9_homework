require_relative 'person'
require_relative 'secret_number'

# require 'lib/person'   # DOES NOT WORK
# require 'lib/secret_number'   #  DOES NOT WORK

class Game
# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly

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

  attr_accessor :name, :secret, :count, :guess

  def initialize(name)
    @name = Person.new(name)
    @secret = SecretNumber.new.create_secret
    @count = 3
  end

  #Welcome players and inform them of the game rules
  def start_game
    puts "Welcome to the game, #{name.get_name}. \n
    You have 3 chances to guess the secret number. \n
    The number is between 1 and 10, inclusive of 1 & 10.\n"

    # puts "What is your first guess?"
    # guess = gets.strip
    # count = 3
    # check_number(guess, count) #should return whether the number is higher or lower or correct

    while (count > 0)

      guess = ask_number
      verify_number(guess)
      break if guess == secret


      @count = count - 1

      if count == 0
        puts "OH NO. You didn't guess it!!  The secret number was...#{secret}"
      else
      end
    end

  end

  def verify_number(guess)
    if guess == secret
      puts "You guessed the secret number! It was #{secret}!"
    elsif guess > secret
      puts "You guessed too high."
    elsif guess < secret
      puts "You guessed too low."
    end


    # guess = ask_number
    # puts "You guessed #{guess}."
    # @count = count - 1
    #
    # # while count > 0
    # #   if guess == secret
    # #     puts "Yay!"
    # #     break
    # #   elsif guess > secret
    # #     puts "You guessed too high"
    # #   elsif guess < secret
    # #     puts "You guessed too low"
    # #     @count = count - 1
    # # end
    #
  end #end of verify_number method


  def ask_number
    while true
      puts "What is your guess? You have #{count} chances!"
      guess = gets.strip.to_i
      if (guess >=1) && (guess <= 10)
        return guess
        break
      else
        puts "You must guess an integer between 1 & 10 (inclusive)."
      end
      # return guess
    end

    # until (guess >=1) && (guess <= 10)
    #   puts "What is your guess? You have #{count} chances!"
    #   guess = gets.strip.to_i
    #   puts "You must guess an integer between 1 & 10 (inclusive)."
    # end
    # return guess
  end #end of ask_number method

#HOW DO I CHECK TO SEE IF AN INPUT IS AN INTEGER? without doing .to_i   since that will make the input, regardless of whatever it is, an integer before I can do the check




end #end of Game class
