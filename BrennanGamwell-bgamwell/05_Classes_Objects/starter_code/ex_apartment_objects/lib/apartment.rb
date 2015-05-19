require 'pry'
require 'pry-byebug'

class Apartment
  attr_accessor :name, :sqft, :bedrooms, :bathrooms, :renter, :rent

  def initialize(name,sqft,bedrooms,bathrooms) #This is the "constructor" function
    @name = name
    @sqft = sqft
    @bedrooms = bedrooms
    @bathroom = bathrooms
    @renter = nil
    @rent = nil
  end

  def not_occupied?
    @renter.nil? #This will return true if not rented
  end

  def to_s
    "Apartment #{name} has #{sqft} sqft"
  end
end

apartment = Apartment.new("The Bond", 1700, 2, 2)

# binding.pry
#
# puts apartment
# puts apartment.name, apartment.renter
