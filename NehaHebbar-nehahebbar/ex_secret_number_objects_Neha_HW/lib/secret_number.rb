
# This class will generate our secret number for us
# This class should initiate an array of numbers that range between 1 - 10.
# Use a method from the array class to select a random element from that array. This random number will be the secret number.
# This way the secret number is also a secret to you.

class SecretNumber
  attr_accessor :max, :number

  #takes in max as an argument so number is picked between 1-max
  def initialize(difficulty)
    difficulty = difficulty.to_i
    if difficulty == 3
      max = 30
      elsif difficulty == 2
        max = 20
      else max = 10
    end
    @max = max.to_i
    @number = []

    1.upto(@max) do |each_number|
      @number << each_number
    end

    @number = @number.sample

  end
end
