#1 - Create a contact_list using hashes
    #Each entry should have a name, telephone, email, location
#2 - Create a method that tells you how many contacts are in your contact list
#3 - Create a method that iterates through each contact. It should print the name, telephone and email details
#4 - Create a method that selects a specific name (or key) and "dials" the phone_number

##NOTES -- THERE ARE MANY WAYS TO DO THE ABOVE. Feel free to use your own strategy #####

require 'pry'
require 'pry-byebug'

def contacts_count(contacts)
  puts "There are #{contacts.count} contacts in your contacts database"
end

#create a contact using the hash syntax
def create_contact(name, telephone, email, location)
  contact = {}
  contact[:name] = name
  contact[:telephone] = telephone
  contact[:email] = email
  contact[:location] = location
  return contact
end

#iterate through all contacts. Print THE name, email & telephone using iterpolation #{this_syntax_is interpolation}
def contact_log(contacts)
  contacts.each do |contact|
    puts "\n"
    puts "Name: #{contact[:name]}"
    puts "Telephone: #{contact[:telephone]}"
    puts "Email: #{contact[:email]}"
    puts "Location: #{contact[:location]}"
  end
  puts "\n"
end

#find a specific contact and pri the telephone number
def find_and_call_contact(contacts, contact_name)
  puts "Finding #{contact_name}"
  contact_telephone = nil
  contacts.each do |contact|
    if contact[:name] == contact_name
      puts "Found #{contact_name}"
      contact_telephone = contact[:telephone]
      break
    else
      next
    end
  end
  if contact_telephone.nil?
    puts "#{contact_name} not found"
  else
    puts "Calling #{contact_name}: #{contact_telephone}"
  end
end

def add_to_contacts(contacts, contact)
  contacts.push(contact)
end

#array to hold each contact
contacts = []

#Examples. Only directional you can do this whatever way you like
contact = create_contact("kisha", "555-555-5555", "kisha@example.com", "San Francisco")
add_to_contacts(contacts, contact)

contact = create_contact("bianca", "650-555-5555", "bianca@example.com", "San Francisco")
add_to_contacts(contacts, contact)

contact = create_contact("julie", "949-555-5555", "julie@example.com", "San Francisco")
add_to_contacts(contacts, contact)

contact = create_contact("not kisha", "415-555-5555", "notkisha@example.com", "San Francisco")
add_to_contacts(contacts, contact)

contacts_count(contacts)
contact_log(contacts)

puts "Who are you looking up?"
contact_name = gets.strip
find_and_call_contact(contacts, contact_name)
