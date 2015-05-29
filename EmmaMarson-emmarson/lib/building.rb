#Building Class
require 'pry'


class Building
  attr_accessor :name, :address, :apartments

  def initialize(name, address)
    @address = address
    @name = name
    @apartments = []
  end

  def create_building(building_name, building_address)
    puts "-----------New Building-----------"
    puts "What is the building's name?"
    building_name = gets.strip

    puts "What is the building's address?"
    building_address = gets.strip

    Building.new(building_name, building_address)
  end

  def view_apartments
    puts "------------#{@name} Apartment List--------------"
    @apartments.each do |apartment|
      puts apartment
      if apartment.is_occupied?
        "The apartment is not available. Renter name: #{apartment.renter.name}" 
      else
        "This apartment is vacant"
      end
    end
  end

  def to_s
    "#{name} at #{address} has #{@apartments.count} apartments."
  end
end

building = Building.new("The Bond", "555 Main Street")

puts building.name
puts building.address
