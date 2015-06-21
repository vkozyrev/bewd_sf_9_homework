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

  def not_occupied?
    @renter.nil? #this will return true if not rented
  end

  def to_s
    "Apartment #{@name} has #{@sqft} sqft with #{@bedrooms} bedrooms & #{@bathrooms} bathrooms"
  end
end
