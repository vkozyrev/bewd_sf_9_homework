require 'pry'
require 'pry-byebug'

class Person
# this class will likely be simple, and just remember its name
	attr_accessor :first_name

	def initialize(first_name)
		@first_name = first_name
	end
end
