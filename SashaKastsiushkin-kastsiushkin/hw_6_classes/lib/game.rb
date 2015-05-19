require_relative 'person'
require_relative 'secret_number'

class Game
# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly
  attr_accessor :attempts, :player

  def initialize(player)
    @attempts = 0
    @player = player
  end

  def play
    puts "Hi #{player}, lets begin\n\n"
    secret_number = get_secret_number
    guess = guess_number
    print_message_for_guess(secret_number, guess)
    until guess == secret_number do
      guess = guess_number
      print_message_for_guess(secret_number, guess)
    end
    next_step
  end

  def next_step
    puts "\nn - to replay"
    puts "q - to exit"
    print "..."
    next_move = gets.chomp.downcase
    if next_move == 'n'
      play
    else
      puts "Thanks for playing #{@player}, your best rank is #{@player.rank}"
    end
  end

  private

  # Creates an instance of SecretNumber and calls its method to get a number
  def get_secret_number
    generator = SecretNumber.new()
    generator.get_secret_number
  end

  # Increments number of attemts
  # Calls method to get user's input
  def guess_number
    @attempts += 1
    guess = get_guess
  end

  # Prompts user for input and converts it to integer
  def get_guess
    print "Enter your guess: "
    gets.chomp.to_i
  end

  # Checks user input against known secret number
  # Prints message depending on the results
  def print_message_for_guess(secret_number, guessed_number)
    if ( guessed_number == secret_number )
      puts ""
      puts "*" * 20
      puts " Congratulations #{@player}!!!"
      puts " You correctly guessed number #{secret_number} in #{@attempts} steps"
      rank = @player.get_rank(@attempts)
      @player.update_score(@attempts)
      puts " Your current rank is #{rank}"
      puts "*" * 20
    elsif ( guessed_number < secret_number  )
      puts " Too low!"
    elsif ( guessed_number > secret_number  )
      puts " Too high!"
    else
      puts " Something is just not right, try again!"
    end
  end

end
