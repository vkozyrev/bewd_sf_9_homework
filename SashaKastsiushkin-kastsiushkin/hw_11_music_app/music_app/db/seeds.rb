# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Create Record Labels"
RecordLabel.create [
  {
    name: "Magic Tape",
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVnF9ZND-xL2tq0UTskbXJpJs6p8WTxkFyapQ_1p2WQiHYtSt7hQ"
  }
]

puts "Create Artists"
Artist.create [
  {
    name: "Magician",
    country: "Belgium",
    record_label_id: 1
  }
]
