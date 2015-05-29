require 'pry'
require 'pry-byebug'

class Person
  attr_accessor :name, :credit_score, :gender

  def create_renter
	  puts "-----------New Renter-----------"
	  puts "What is the renter's name?"
	  name = gets.strip

	  puts "What is the #{name}'s credit score?"
	  credit_score = gets.to_i

	  puts "What gender is #{name}?"
	  gender = gets.strip

	  Person.new(name, credit_score, gender)
	end

  def initialize(name,credit_score, gender)
    @name = name
    @credit_score = credit_score
    @gender = gender
  end

  def to_s
    "#{@name} with credit_rating #{@credit_score} is #{@gender} "
  end

end


person = Person.new("Kisha", 800, "f")
puts person