require 'pry'
require 'pry-byebug'

# Create an employee class.
class Employee #inherits from Object class
  attr_accessor :first_name, :last_name, :phone

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    # @phone = nil # not necessary to set , usually set to nil if it's declared in attr_accessor
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def to_s
    "My name is #{first_name} #{last_name}. My phone number is #{phone}"
  end
end

# A manager is contactable by email,
# and wants their title as part of their name display
class Manager < Employee
  attr_accessor :title, :email

  def initialize(first_name, last_name, title, email)
    super(first_name, last_name)
    @title = title
    @email = email
  end

  def full_name
    "#{first_name}, #{title}"
  end

end

# A marketer can be contacted via twitter
# but is fine with the default name display
class Marketer < Employee
  attr_accessor :twitter_handle

  def initialize(first_name, last_name, twitter_handle)
    super(first_name, last_name)
    @twitter_handle = twitter_handle
  end

  def contact
    @twitter_handle
  end

end


######

# employee = Employee.new("Test", "Last Test")
# puts employee.to_s

# manager = Manager.new("Mary", "Jane", "CEO", "ceo@mary_jane.com")
# puts manager.full_name

marketer = Marketer.new("Joe", "Jackson", "@joe_jackson")
puts marketer.contact
