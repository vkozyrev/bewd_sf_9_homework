# SecretNumber
#   This class should initiate an array of numbers that range between 1 - 10.
#   Use a method from the array class to select a random element from that array. This random number will be the secret number.
#   Use array.samples to select the secret number and assign it to a secret_number variable
#   This way the secret number is also a secret to you.

require 'pry'
require 'pry-byebug'

class SecretNumber
  attr_accessor :number

  def initialize(number)
    @number = number
  end

  def self.create_random_number
    number_range = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

#When I used [1..10].sample here, the program wouldn't choose a random number, but printed [1..10] back out for me every time.

    secret_number = number_range.sample
    return secret_number
  end

  def self.create_number_instance
    SecretNumber.new(create_random_number)
  end

end
