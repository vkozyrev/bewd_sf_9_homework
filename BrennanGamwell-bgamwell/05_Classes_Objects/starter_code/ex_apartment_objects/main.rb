# Exercise Goal: This is an exercise in reading and writing code.
# => The purpose of this exercise is to practice creating classes.
# Task Instructions:
# => The main.rb file is where the application starts, and we've given you the code below.
# => Your job is to write the "Apartment", "Building" and "Person" classes.
# => You can find those files in the 'lib' folder (or use the Sublime Text "Goto Anything" shortcut key!)

# => Run this file on the command line, "ruby main.rb" and see what happens.
# => Read the code below and use it to inform what variables and methods are necessary for each of the classes listed above.
# => We've also provided a png file of the terminal output from the completed version. (This won't open in Sublime Text)
# => Hint: Think before you code. Annotate code and comment out sections as you test different sections

require_relative 'lib/building' #Gives access to the building class by linking files
require_relative 'lib/apartment' #Gives access to the building class by linking files
require_relative 'lib/person' #Gives access to the building class by linking files
require 'pry'
require 'pry-byebug'

## First, define our methods

def create_apartment
  puts "-----------New Apartment-----------"
  puts "What is the apartment number / name?"
  name = gets.strip

  puts "How many square feet is apartment #{name}?"
  apt_sqft = gets.to_i

  puts "How many bedrooms does apartment #{name} have?"
  apt_bedrooms = gets.to_i

  puts "How many bathrooms does apartment #{name} have?"
  apt_bathrooms = gets.to_i

  Apartment.new(name, apt_sqft, apt_bedrooms, apt_bathrooms) #When instances of a class are created, where are they stored?
end

def create_renter
  puts "-----------New Renter-----------"
  puts "What is the renter's name?"
  name = gets.strip

  puts "What is the #{name}'s credit score?"
  credit_score = gets.to_i

  puts "What gender is #{name}?"
  gender = gets.strip

  Person.new(name, credit_score, gender)
end


#Getting info from user; creating an instance of building based on their input
def create_building
  puts "-----------New Building-----------"
  puts "What is the building's name?"
  building_name = gets.strip

  puts "What is the building's address?"
  building_address = gets.strip

  Building.new(building_name, building_address)
end

# Now call methods to run the program

puts "******************Welcome to Ruby Building Manager****************** \n \n \n"

building = create_building #calls method create_building and assigns the instance of building creating to the variable "building." "building" is an instance variable and can be called using instance variables below

puts "How many units are there?"
apt_count = gets.to_i

 0.upto(apt_count - 1) do |unit|
  apartment = create_apartment
  building.apartments[unit] = apartment

  puts "Apartment added successfully \n #{apartment}"

  puts "Is unit #{apartment.name} rented? (y)es (n)o"
  unit_rented = gets.strip

#If apartment is rented, will ask for renter information
  if unit_rented == "y"
    apartment.renter = create_renter
    puts "Renter added successfully"

    puts "How much is this unit rented for?"
    rent = gets.to_i
    apartment.rent = rent
  end
end

puts "What would you like to do next, (v)iew all apartments? (q)uit?"
response = gets.strip

if response == 'v'
  building.view_apartments #instance of the class building; this is an instance method
else
  puts "Thanks for using Ruby Building Manager"
end
