#1 - Create a contact_list using hashes
    #Each entry should have a name, telephone, email, location
#2 - Create a method that tells you how many contacts are in your contact list
#3 - Create a method that iterates through each contact. It should print the name, telephone and email details
#4 - Create a method that selects a specific name (or key) and "dials" the phone_number

##NOTES -- THERE ARE MANY WAYS TO DO THE ABOVE. Feel free to use your own strategy #####

require 'pry'
require 'pry-byebug'

#array to hold each contact
contacts = []

#create a contact using the hash syntax
def create_contact(name, telephone, email){
    name: name,
    telephone: telephone,
    email: email
  }
end

#add contact to contacts array
def add_to_contacts(contacts, contact)
  contacts.push(contact)
end

#count contacts
def contacts_count(contacts)
  "There are #{contacts.length} in your contacts database"
end

#iterate through all contacts. Print THE name, email & telephone using iterpolation #{this_syntax_is interpolation}
def contact_log(contacts)
    contacts.each_with_index do |contact, index|
      puts "Contact #{index + 1}- Name:#{contact[:name]}, Phone Number: #{contact[:telephone]}, Email:#{contact[:email]}"
    end
end

#find a specific contact and print the telephone number
def find_and_call_contact(contacts, name_search)
  contacts.find do |contact|
    if contact[:name] == name_search
      puts "Now dialing phone number: #{contact[:telephone]}"
    end
  end
end


#################################################################
#run the methods that we created

#create contact1
kisha = create_contact("kisha", "555-555-5555", "kisha@example.com")
#add contact1 to contacts list
add_to_contacts(contacts, kisha)
#create contact2
joe = create_contact("joe", "555-555-dsfsd5555", "kisha@esdfdxample.com")
#add contact2 to contacts list
add_to_contacts(contacts, joe)

#print out all contacts
contact_log(contacts)

#search for a specific contact by name and print out phone number
find_and_call_contact(contacts, "kisha")
