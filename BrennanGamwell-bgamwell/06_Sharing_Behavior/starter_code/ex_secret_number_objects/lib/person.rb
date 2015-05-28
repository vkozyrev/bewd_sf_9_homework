# Player
#  Should initialize the player's name.
#  Use gets.strip to get the player's name and assign it to the instance variable name

require 'pry'
require 'pry-byebug'

class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end
