require 'pry'
require 'pry-byebug'

class SecretNumber # this class will generate our secret number for us

  attr_accessor :number

  def initialize(number)
    @number = all_nums
  end

  def randomizer
    number.sample
  end

end

secretnumber = SecretNumber.new

all_nums = [1,2,3,4,5,6,7,8,9,10]
