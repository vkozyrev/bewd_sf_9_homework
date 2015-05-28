#Building Class
class Building
  attr_accessor :name, :address, :apartments
  #hint apartments should be an array i.e @apartments = []

  def initialize(name, address)
    @name = name
    @address = address
    @apartments = @apartments || []
  end

  def view_apartments
    puts "----------- #{name} Apartment List ------------"
    @apartments.each do |unit|
      puts unit
      puts "Apartment is available" unless unit.is_occupied?
    end
  end

  def to_s
    "#{name} at #{address} has #{@apartments.count} apartments."
  end
end
