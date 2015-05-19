require 'pry'
require 'pry-byebug'

class Apartment
  attr_accessor :name, :sqft, :bedrooms, :bathrooms, :renter, :rent

  def initialize(name,sqft,bedrooms,bathrooms)
    @name = name
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @renter = renter
    @rent = rent
  end

  def to_s
    "Apartment: #{name} \n Sqft: #{sqft} \t Bedrooms: #{bedrooms} \t Bathrooms: #{bathrooms}"
  end

  def is_occupied?
  end
end
