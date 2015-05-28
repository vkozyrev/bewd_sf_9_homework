class SecretNumber
# this class will generate our secret number for us

  attr_accessor :secret

  def initialize
    @secret = secret
  end

  def create_secret
    numbers_array = Array.new(10){ |number| number + 1}
    secret = numbers_array.sample


    # below did not work.  kept making secret an Array and not a number
    # numbers_array.push (1..10).to_a
    # secret = numbers_array.sample
  end

end
