require 'pry'
require_relative './lib/jukebox'
require_relative './lib/song'

song1 = Song.new("Wake Me Up Before You Go Go", "Wham!")
song2 = Song.new("She Don't Love Me Anymore", "The Aliens")
song3 = Song.new("Hello", "Lionel Ritchie")
song4 = Song.new("Kokomo", "The Beach Boys")
song5 = Song.new("Nothing's Gonna Stop Us Now", "Starship")

available_songs = [song1, song3, song4, song5]

requested_songs = [song1, song2]

jukebox = Jukebox.new(available_songs, requested_songs)


puts "\nOriginal Playlist"

jukebox.requested_songs.each do |song|
  puts song.song_name
end

jukebox.add_track!(song5)

puts "\nNew Playlist"
jukebox.requested_songs.each do |song|
  puts song.song_name
end

puts "\n\n\n"

jukebox.play!
jukebox.play!
jukebox.play!
jukebox.play!
jukebox.play!
