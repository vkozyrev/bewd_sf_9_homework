require 'pry'
require 'pry-byebug'

# this class will generate our secret number for us

class SecretNumber
  attr_accessor :number

  def initialize
    @number = Array.new

    10.times do |1|
      1 += 1
      @number << 1
    end

    number = @number.sample
  end
end
