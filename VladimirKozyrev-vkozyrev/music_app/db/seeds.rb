# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

record_label_1 = RecordLabel.create!(name: 'Sony')
record_label_2 = RecordLabel.create!(name: 'Interscope')

artist_1 = Artist.create!(name: 'Michael Jackson', record_label: record_label_1)
artist_2 = Artist.create!(name: 'Dr Dunks', record_label: record_label_2)

song_1 = Song.create!(name: 'Billy Jean', artist: artist_1)
song_2 = Song.create!(name: 'Zoo-Ma-City', artist: artist_2)