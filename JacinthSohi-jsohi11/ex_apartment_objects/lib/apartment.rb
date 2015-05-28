require 'pry'
require 'pry-byebug'

class Apartment
  attr_accessor :name, :sqft, :bedrooms, :bathrooms, :renter, :rent

  def initialize(name,sqft,bedrooms,bathrooms)
  	@name = name
  	@sqft = sqft
  	@bedrooms = bedrooms
  	@bathrooms = bathrooms
  end


  def to_s
    "Apartment: #{name} \n sqft: #{sqft}    Bedrooms: #{bedrooms}    Bathrooms: #{bathrooms}"
  end

  def is_occupied?
  end
end
