#Practice code - creating classes

require 'pry'
require 'pry-byebug'

class Person
  attr_accessor :name, :age, :city

  def initialize(name, age, city)
    @name = name
    @age = age
    @city = city
  end


  #instance method - ONLY called by instances of Person
  def hey
    puts "Hey!!!! I'm #{@name}"
  end

#class method - adding names to the class
  def self.random_people
    names = ["Brennan", "Joe", "Josh"]
    ages = ["25", "26", "27"]
    cities = ["San Francisco", "New York", "San Jose"]

    name = names.sample
    age = ages.sample
    city = cities.sample
    return name, age, city
    #Use a binding pry to figure out what the return looks like
  end

  #class method
  def self.create_person
    p = Person.random_people
    #random_people method returns an array - something like this ["Joe", "27", "San Francisco"
    Person.new(p[0], p[1], p[2])
  end
end


person = Person.create_person
puts person.name
puts person.hey #calling this instance method 'hey' from above
#lowercase variables are instance variables
