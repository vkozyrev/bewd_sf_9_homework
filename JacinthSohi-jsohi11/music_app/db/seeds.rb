Artist.create!([
  {fname: "Wolfgang A", lname: "Mozart", bio: "Classical composer of baroque music who wrote many sonatas", artist_image: "http://www.musicaltoronto.org/wp-content/uploads/2014/06/mozart1.jpg", record_label_id: 2},
  {fname: "Lady", lname: "Gaga", bio: "A musical artist who dresses interestingly ", artist_image: "", record_label_id: 1},
  {fname: "MisterWives", lname: "", bio: "An up and coming band", artist_image: "", record_label_id: 4}
])
RecordLabel.create!([
  {label_name: "Cool Tunes Music Co"},
  {label_name: "Music Mavens Records"},
  {label_name: "Sassy Songs Limited"}
])
Song.create!([
  {title: "the other mozart song - the remix", year_released: 2015, artist_id: 1, song_url: nil},
  {title: "Mozart's test ", year_released: 2015, artist_id: 1, song_url: nil},
  {title: "Poker Face", year_released: 2009, artist_id: 4, song_url: "https://open.spotify.com/track/3OT3Kg4jyVkdZm4Ncz6JgX"},
  {title: "A third Mozart song", year_released: 2014, artist_id: 1, song_url: nil},
  {title: "Yet another Mozart song", year_released: 1845, artist_id: 1, song_url: nil},
  {title: "Our Own House", year_released: 2015, artist_id: 5, song_url: nil}
])
