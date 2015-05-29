require 'lib/person'
require 'lib/secret_number'


# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly
class Game
  attr_accessor :secret, :person, :guesses_left

 def initialize(player_name)
   @secret = SecretNumber.new
   @player = Person.new(player_name)
   @guesses_left = 3
 end

end
