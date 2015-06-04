class SecretNumber
	attr_accessor :number_array, :random_number


	def initialize
		@number_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
		@random_number = @number_array.sample
		return @random_number
	end

	def to_s
		puts "The secret number is #{@random_number}."
	end
# this class will generate our secret number for us
end

