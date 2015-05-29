require 'pry'
require 'pry-byebug'

class Apartment
  attr_accessor :name, :sqft, :bedrooms, :bathrooms, :renter, :rent

  def initialize(name,sqft,bedrooms,bathrooms)
    @name = name
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @renter = nil
    @rent = nil
  end

  def create_apartment
    puts "-----------New Apartment-----------"
    puts "What is the apartment number / name?"
    name = gets.strip

    puts "How many square feet is apartment #{name}?"
    apt_sqft = gets.to_i

    puts "How many bedrooms does apartment #{name} have?"
    apt_bedrooms = gets.to_i

    puts "How many bathrooms does apartment #{name} have?"
    apt_bathrooms = gets.to_i

    Apartment.new(name, apt_sqft, apt_bedrooms, apt_bathrooms)
  end

  def to_s
    "Apartment #{name} has #{sqft} sqft"
  end

   def is_occupied?
    @renter != nil
  end
end

apartment = Apartment.new(name,sqft,bedrooms,bathrooms)


