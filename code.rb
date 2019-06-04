require 'pry'
require_relative './lib/jukebox'

library = [
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
  "Nothing's Gonna Stop Us Now - Starship",
  "She Don't Love Me Anymore - The Aliens"
]

jukebox = Jukebox.new(library, requested_songs)

puts "\nOriginal Playlist"
puts jukebox.playlist

jukebox.add_track!("We Didn't Start The Fire - Billy Joel")

puts "\nNew Playlist"
puts jukebox.playlist

puts "\n\n\n"

jukebox.play!
jukebox.play!
jukebox.play!
jukebox.play!
jukebox.play!
