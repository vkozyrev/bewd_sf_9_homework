#conceptually, I don't understand why we need a "game" class at all--can't all this logic be put into the "main" file?


# require 'lib/person'
# require 'lib/secret_number'
require 'pry'
require 'pry-byebug'
#
class Game
  attr_accessor :player_entry

  def initialize(player_entry)
    @player_entry = player_entry
  end
end






# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our code is structured properly
