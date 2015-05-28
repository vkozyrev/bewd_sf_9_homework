#1 - Create a contact_list using hashes
    #Each entry should have a name, telephone, email, location
#2 - Create a method that tells you how many contacts are in your contact list
#3 - Create a method that iterates through each contact. It should print the name, telephone and email details
#4 - Create a method that selects a specific name (or key) and "dials" the phone_number

##NOTES -- THERE ARE MANY WAYS TO DO THE ABOVE. Feel free to use your own strategy #####

require 'pry'
require 'pry-byebug'

<<<<<<< Updated upstream
def contacts_count(contacts)
  puts "There are #{contacts.count} in your contacts database"
end

#create a contact using the hash syntax
def create_contact(name, telephone, email)
  contact = {}
  contact[:kisha] = {name: name, telephone: telephone, email: email}
=======
def contacts_count($contacts)
  puts "There are #{$contacts.count} in your contacts database"
end

#create a contact using the hash syntax
def create_contact(name, telephone, email, location)
  puts "What's your name?"
  name = gets.chomp
  puts "What's your telephone?"
  telephone = gets.chomp
  puts "What's your email?"
  email = gets.chomp
  puts "What's your location?"
  location = gets.chomp
  new_contact = {}
  new_contact[:name] = name
  new_contact[:telephone] = telephone
  new_contact[:email] = email
  new_contact[:location] = location
  #return new_contact
  puts new_contact
  $contacts.push(new_contact)
>>>>>>> Stashed changes
end

#iterate through all contacts. Print THE name, email & telephone using interpolation #{this_syntax_is interpolation}
def contact_log(contacts)
<<<<<<< Updated upstream
  contacts_count(contacts)
  puts "Here is a list of names ... \n"
  contacts.each do |contact|
    puts "#{contact[:name].capitalize}. Email is #{contact[:email]}. Telephone is #{contact[:telephone]}"
  end
=======
  puts contacts
>>>>>>> Stashed changes
end

#find a specific contact and print the telephone number
def find_and_call_contact(contacts, name)
  contacts.each do |contact|
    if contact[:name] == name
      puts "I found #{contact[:name].capitalize} in your contacts database\n"
      puts "I am dialing the number now. It is #{contact[:telephone]}"
    end
  end
end

def add_to_contacts(contacts, contact)
  contacts << contact
  puts "#{contact[:name].capitalize} has been added!!"
end

#array to hold each contact
$contacts = []

#Examples. Only directional you can do this whatever way you like
<<<<<<< Updated upstream
contact = create_contact("kisha", "555-555-5555", "kisha@example.com")
add_to_contacts(contacts, contact)

contact = create_contact("david", "222-222-2222", "david@example.com")
add_to_contacts(contacts, contact)

contact = create_contact("nicole", "444-444-4444", "nicole@example.com")
add_to_contacts(contacts, contact)

####
contacts_count(contacts)

#find_a_name
name = "kisha"
find_and_call_contact(contacts, name)

#contact_logs
contact_log(contacts)
=======
contact = create_contact("kisha", "555-555-5555", "kisha@example.com", "SF")
# add_to_contact(contacts, contact)
>>>>>>> Stashed changes
