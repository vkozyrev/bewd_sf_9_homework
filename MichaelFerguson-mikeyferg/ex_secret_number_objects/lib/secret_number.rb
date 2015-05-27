class SecretNumber
# this class will generate our secret number for us
  attr_accessor :rand_num
  def initialize
    @rand_num =  [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].sample
  end
end


#puts SecretNumber.new().rand_num
