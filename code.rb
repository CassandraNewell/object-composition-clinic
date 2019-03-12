available_songs = [
  "Hello - Lionel Ritchie",
  "Kokomo – The Beach Boys",
  "Girl You Know It’s True – Milli Vanilli",
  "Agadoo – Black Lace",
  "Down Under - Men at Work",
  "Nothing's Gonna Stop Us Now - Starship",
  "Get Outta My Dreams, Get Into My Car - Billy Ocean",
  "I Just Called To Say I Love You - Stevie Wonder",
  "Hangin' Tough - New Kids on the Block",
  "We Built This City - Starship",
  "Wake Me Up Before You Go Go - Wham!",
  "We Didn't Start The Fire - Billy Joel",
  "I Wanna Dance With Somebody - Whitney Houston",
  "U Can't Touch This - MC Hammer"
]

requested_songs = [
  "Wake Me Up Before You Go Go - Wham!",
  "She Don't Love Me Anymore - The Aliens"
]

jukebox = Jukebox.new(requested_songs, available_songs)

puts "\nOriginal playlist:"
puts jukebox.requested_songs

jukebox.add_track!("Nothing's Gonna Stop Us Now - Starship")

puts "\nNew playlist:"
puts jukebox.requested_songs

jukebox.play!
jukebox.play!
jukebox.play!
jukebox.play!
