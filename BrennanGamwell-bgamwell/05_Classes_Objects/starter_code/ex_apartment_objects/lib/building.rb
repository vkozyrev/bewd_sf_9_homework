require 'pry'
require 'pry-byebug'

#Building Class
class Building
  attr_accessor :name, :address, :apartments
  #hint apartments should be an array i.e @apartments = []

  def initialize(name, address)
    @name = name
    @address = address
    @apartments =  [ ]
  end

#within an instance method the building knows itself
#'self' is always assumed--self.apartments and apartments are the same **within the method**
  def view_apartments
      apartments.each do |apartment|
      puts "Apartment: #{apartment} \n"
      puts "sqft: #{apartment.sqft} | bedrooms: #{apartment.bedrooms} | bathrooms: #{apartment.bathrooms} \n"
      puts "This apartment is vacant" if apartment.not_occupied?
  end
end

  def to_s
    "#{name} at #{address} has #{@apartments.count} apartments."
  end
end
