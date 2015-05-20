# SecretNumber
#   This class should initiate an array of numbers that range between 1 - 10.
#   Use a method from the array class to select a random element from that array. This random number will be the secret number.
#   This way the secret number is also a secret to you.

require 'pry'
require 'pry-byebug'

class SecretNumber # this class will generate our secret number for us
	attr_accessor :secret_number, :top_number

	def initialize(top_number)
		@secret_number = SecretNumber.select_range(top_number).sample
		@top_number = top_number
	end

	def self.select_range(high_value)
		(1..high_value.to_i).to_a
	end

	def to_s
		"#{@secret_number}"
	end
end


test = SecretNumber.new(50)
puts test.secret_number
puts test.top_number

