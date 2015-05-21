require 'pry'
require 'pry-byebug'

class SecretNumber # this class will generate our secret number for us

  attr_accessor :number

  def initialize (number)
    @number = rand(1..10).to_i
  end

  # def to_s
  #   "Your secret number is #{number}."
  # end
end

secretnumber = secretnumber.new

# all_nums = [1,2,3,4,5,6,7,8,9,10]
