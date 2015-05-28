require 'pry'
require 'pry-byebug'

class Person # this class will likely be simple, and just remember its name

  attr_accessor :fist_name, :last_name

  def initialize(first_name, last name)
    @first_name = first_name
    @last_name = last_name
  end

  # def to_s
  #   "Hello #{first_name} #{last_name}."
  # end

end

person = Person.new("Vish", "Amin")
puts person
