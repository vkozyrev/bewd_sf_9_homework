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
  },
  {
    name: "Desert Hearts",
    image_url: "http://www.deserthearts.us/wp-content/uploads/2014/09/New_dh_logo.png"
  },
  {
    name: "DISTRIKT",
    image_url: "data:image/jpeg;base64,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"
  }
]

puts "Create Artists"
Artist.create [
  {
    name: "Magician",
    country: "Belgium",
    record_label_id: 1
  },
  {
    name: "Mikey Lion",
    country: "USA",
    record_label_id: 2
  },
  {
    name: "Tara Brooks",
    country: "USA",
    record_label_id: 2
  },
  {
    name: "Matthew Kramer",
    country: "USA",
    record_label_id: 3
  }
]

puts "Add Songs"
Song.create [
  {
    name: "Twist",
    album: "n/a",
    artist_id: 1
  },
  {
    name: "I Don't Know What to Do",
    album: "n/a",
    artist_id: 1
  },
  {
    name: "Memory",
    album: "n/a",
    artist_id: 1
  },
  {
    name: "When the Night Is Over",
    album: "n/a",
    artist_id: 1
  },
  {
    name: "Sunlight",
    album: "n/a",
    artist_id: 1
  },

  {
    name: "Drum Formulas",
    album: "n/a",
    artist_id: 2
  },
  {
    name: "Playa Dreams",
    album: "n/a",
    artist_id: 2
  },
  {
    name: "Tribute",
    album: "n/a",
    artist_id: 2
  },
  {
    name: "How to Love",
    album: "n/a",
    artist_id: 2
  },
  {
    name: "Voltron",
    album: "n/a",
    artist_id: 2
  },

  {
    name: "Metanoia",
    album: "n/a",
    artist_id: 3
  },
  {
    name: "Counter Culture",
    album: "n/a",
    artist_id: 3
  },
  {
    name: "Changes",
    album: "n/a",
    artist_id: 3
  },
  {
    name: "Skism",
    album: "n/a",
    artist_id: 3
  },
  {
    name: "Shaped and Shifted",
    album: "n/a",
    artist_id: 3
  },

  {
    name: "Pressurized",
    album: "n/a",
    artist_id: 4
  },
  {
    name: "Ambience One",
    album: "n/a",
    artist_id: 4
  },
  {
    name: "Drums for the Underground",
    album: "n/a",
    artist_id: 4
  },
  {
    name: "Keep Pushing Forward",
    album: "n/a",
    artist_id: 4
  },
  {
    name: "Accession",
    album: "n/a",
    artist_id: 4
  },
  {
    name: "Running",
    album: "n/a",
    artist_id: 4
  },

]
