# this class will generate our secret number for us
class SecretNumber
  attr_accessor :array

  def initialize
    @array = [1,2,3,4,5,6,7,8,9,10]
  end

  # Returns random number from the array
  def get_secret_number
    @array.sample
  end
end
