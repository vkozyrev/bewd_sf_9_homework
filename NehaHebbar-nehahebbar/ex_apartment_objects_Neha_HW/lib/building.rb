require 'pry'
require 'pry-byebug'

#Building Class
class Building
  attr_accessor :name, :address, :apartments

  def initialize(name, address)
    @address = address
    @name = name
    @apartments = []
  end

  def view_apartments
    puts "------------#{@name} Apartment List--------------"
    @apartments.each do |apartment|
      puts "Apartment: #{apartment.name} \n"
      puts "sqft: #{apartment.sqft}   bedrooms: #{apartment.bedrooms}   bathrooms: #{apartment.bathrooms} \n"
      if apartment.not_occupied?
        "This apartment is vacant"
      else
        "The apartment is not available. Renter name: #{apartment.renter.name}"
      end
    end
  end

  def to_s
    "#{name} at #{address} has #{@apartments.count} apartments."
  end
end
