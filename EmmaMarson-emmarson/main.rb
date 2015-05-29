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

require_relative 'lib/building'
require_relative 'lib/apartment'
require_relative 'lib/person'
require 'pry'

## First, define our methods

# Now call methods to run the program

puts "******************Welcome to Ruby Building Manager****************** \n \n \n"

building = create_building

puts "How many units are there?"
apt_count = gets.to_i

 0.upto(apt_count - 1) do |unit|
  apartment = create_apartment
  building.apartments[unit] = apartment

  puts "Apartment added successfully \n #{apartment}"

  puts "Is unit #{apartment.name} rented? (y)es (n)o"
  unit_rented = gets.strip

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
  building.view_apartments
else
  puts "Thanks for using Ruby Building Manager"
end
