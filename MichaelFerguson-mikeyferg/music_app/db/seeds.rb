# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
label_list = ['AMG', 'Sony', 'Interscope']
label_list.each do |label|
  RecordLabel.create(name: label)
end

artist_list = [
  ["Tupac", 1 ],
  ["Bigie", 1],
  ["The Rolling Stones", 2],
  ["Chromeo", 3]
]

artist_list.each do |name, record_label_id|
  Artist.create(name: name, record_label_id: record_label_id)
end

song_list = [
  ["Live or Die", 1],
  ["Ain't mad at cha", 1],
  ["Big Poppa", 2],
  ["Black or white", 3]
]

song_list.each do |name, artist_id|
  Song.create(name: name, artist_id: artist_id)
end
