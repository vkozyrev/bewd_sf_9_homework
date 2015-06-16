Artist.create!([
  {fname: "Tove", lname: "Lo", bio: "Ebba Tove Elsa Nilsson, better known by her stage name Tove Lo, is a Swedish singer and songwriter. She was born and raised in Stockholm, where she graduated from musical magnet school Rytmus Musikergymnasiet.", artist_image: "http://cdn.shure.com/artist/hero_image/355/Tove-Lo.jpg", record_label_id: 5},
  {fname: "Ed", lname: "Sheeran", bio: "Edward Christopher \"Ed\" Sheeran is an English singer-songwriter and musician. Born in Hebden Bridge, West Yorkshire and raised in Framlingham, Suffolk, he moved to London in 2008 to pursue a musical career.", artist_image: "https://cbsmix1065.files.wordpress.com/2014/08/ed_sheeran_770_6.jpg?w=620&h=349&crop=1", record_label_id: 6},
  {fname: "Ellie", lname: "Goulding", bio: "Elena Jane \"Ellie\" Goulding is an English singer, songwriter and multi-instrumentalist. Her career began when she met record producer Starsmith and Frankmusik, and she was later spotted by Jamie Lillywhite, who later became her manager and A&R. ", artist_image: "https://hamadamania.files.wordpress.com/2012/11/ellie-goulding-figure-8.jpg?w=490&h=407", record_label_id: 7}
])
RecordLabel.create!([
  {label_name: "Island Records"},
  {label_name: "Atlantic Records"},
  {label_name: "Interscope Records"}
])
Song.create!([
  {title: "Talking Body", year_released: 2014, artist_id: 6, song_url: "https://open.spotify.com/track/2tpfxAXiI52znho4WE3XFA"},
  {title: "Habits (Stay High)", year_released: 2014, artist_id: 6, song_url: "https://open.spotify.com/track/4dL1HwRWQgWK9timX9PLex"},
  {title: "Moments", year_released: 2014, artist_id: 6, song_url: "https://open.spotify.com/track/5ZaVrRNqXcNDUj8RWhfv06"},
  {title: "Thinking Out Loud", year_released: 2014, artist_id: 7, song_url: "https://open.spotify.com/track/34gCuhDGsG4bRPIf9bb02f"},
  {title: "I See Fire", year_released: 2014, artist_id: 7, song_url: "https://open.spotify.com/track/5pY3ovFxbvAg7reGZjJQSp"},
  {title: "Photograph", year_released: 2014, artist_id: 7, song_url: "https://open.spotify.com/track/1HNkqx9Ahdgi1Ixy2xkKkL"},
  {title: "Love Me Like You Do", year_released: 2014, artist_id: 8, song_url: "https://open.spotify.com/track/1ip2IGDWMrUmlaepEbWlL8"},
  {title: "Burn", year_released: 2013, artist_id: 8, song_url: "https://open.spotify.com/track/0xMd5bcWTbyXS7wPrBtZA6"},
  {title: "Atlantis", year_released: 2013, artist_id: 8, song_url: "https://open.spotify.com/track/5k7MvJLTc2s964Fq4n049g"}
])
