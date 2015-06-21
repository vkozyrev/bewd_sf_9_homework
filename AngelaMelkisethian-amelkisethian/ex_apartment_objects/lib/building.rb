require 'pry'
require 'pry-byebug'

#Building Class
class Building
  attr_accessor :name, :address, :apartments
  #hint apartments should be an array i.e @apartments = []

  def initialize(name, address)
    @name = name
    @address = address
    @apartments = []
  end

  #within an instance method the building know it 'self'
  #is always assumed. do self.apartments && apartments are
  #the same within the method view_aparments
  def view_apartments
    @apartments.each do |apartment|
      puts "Apartment: #{apartment.name} \n"
      puts "sqft: #{apartment.sqft} | bedrooms: #{apartment.bedrooms} | #{apartment.bathrooms} \n"

     if apartment.not_occupied?
       puts "This apartment is vacant"
     end
    end
  end

  def to_s
    "#{name} at #{address} has #{@apartments.count} apartments."
  end
end
