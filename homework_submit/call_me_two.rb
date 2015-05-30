require 'pry'
require 'pry-byebug'

#custom method create by you
def create_contact(name, telephone, email)
  contact = {}
  contact["name"] = name
  contact["telephone"] = telephone
  contact["email"] = email
  return contact
end

def add_contact(contacts_array, the_contact)
  contacts_array.push(the_contact)
end

def list_contacts(contacts)
  contacts.each do |the_contact|
    puts "Name: #{the_contact["name"]}. Mobile: #{the_contact["telephone"]} " #interpolation
  end
end

def find_and_call_contact(contacts,name)
  contact.each do |contact|
    of cpmtact[:name] == name
    puts "I found #{contact[:name].capitalize} in your contacts database\n"
    puts "I am dialing the number now. It is #{contact[:telephone]}"
  end
end
end

def add_to_contacts(contacts,contact)
  contacts << contact
  puts "#{contact[:name].capitalize} has been added!!"
end



##comments

contacts = []

#Examples. Only directional you can do this whatever way you like
contact1 = create_contact("kisha", "555-555-5555", "kisha@example.com")
add_contact(contacts, contact1)

contact2 = create_contact("andrea", "444-444-4444", "andrea@example.com")
add_contact(contacts, contact2)

# puts contacts
list_contacts(contacts)

#ways to create an hash
# Hash.new
# contact = {}
