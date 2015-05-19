#In the real world, files are usually separated; all classes would be in the same place

require 'pry'
require 'pry-byebug'

# Create an employee class.
class Employee #inherits from Object class
  attr_accessor :first_name, :last_name, :phone

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @phone = nil
  end

  def full_name
      "#{first_name} #{last_name}"
  end

  def to_s #overriding the functionality from somewhere else - when we call the method "to_s," as below, it now puts our variables within the below string.
    "My name is #{first_name} #{last_name}. My phone number is #{phone}"
  end
end

# A manager is contactable by email,
# and wants their title as part of their name display
class Manager < Employee #inherits all attributes from the "Employee" class
  attr_accessor :title, :email

  def initialize(first_name, last_name, title, email)
    super(first_name, last_name) #Indicates that those two parameters are inherited from a "superclass," which is "Employee"
    @title = title
    @email = email
  end

  def full_name #overriding the full_name instance method inherited from manager
    "My name is #{first_name}. I am a manager, and my title is #{title}."
  end
end

# A marketer can be contacted via twitter
# but is fine with the default name display
class Marketer < Employee
  attr_accessor :twitter_handle

  def initialize(first_name, last_name,           twitter_handle)
    super(first_name, last_name)
    @twitter_handle = twitter_handle
  end

  def full_name
    "My name is #{first_name} #{last_name}, and my Twitter handle is #{twitter_handle}. Follow me!"
  end
end

marketer = Marketer.new("Mary","Jane","@MaryJane")
puts marketer.full_name

#notes here
