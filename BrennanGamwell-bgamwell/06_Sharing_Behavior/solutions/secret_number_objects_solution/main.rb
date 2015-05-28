require 'pry'
require 'pry-byebug'

require_relative 'lib/game'

puts "Welcome to Secret Number!"
puts "To begin, please enter your name:"

player_name = gets.strip.capitalize

game = Game.new(player_name)
game.start
