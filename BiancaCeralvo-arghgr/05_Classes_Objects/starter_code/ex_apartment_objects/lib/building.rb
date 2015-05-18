#Building Class
class Building
  attr_accessor :name, :address, :apartments
  #hint apartments should be an array i.e @apartments = []

  def initialize(name, address)
  end

  def view_apartments
  end

  def to_s
    "#{name} at #{address} has #{@apartments.count} apartments."
  end
end
