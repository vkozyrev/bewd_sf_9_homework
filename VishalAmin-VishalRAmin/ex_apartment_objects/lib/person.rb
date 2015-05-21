require 'pry'
require 'pry-byebug'

class Person
  attr_accessor :name, :credit_score, :gender

  def initialize(name,credit_score, gender)
<<<<<<< HEAD
    @name = name
    @credit_score = credit_score
    @gender = gender
=======
>>>>>>> fbca0300694c0e191694e6c9f0651a1a0caee6a2
  end

  def to_s
    "#{@name} with credit_rating #{@credit_score} is #{@gender} "
  end

end
<<<<<<< HEAD

person = Person.new("Kisha", 800, "f")
puts person
=======
>>>>>>> fbca0300694c0e191694e6c9f0651a1a0caee6a2
