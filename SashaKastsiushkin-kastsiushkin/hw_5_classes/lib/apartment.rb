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


  def to_s
    "Apartment: #{name}\n sqft: #{sqft}\t Bedrooms:#{bedrooms}\t Bathrooms: #{bathrooms}"
  end

   def is_occupied?
     !renter.nil?
   end
end
