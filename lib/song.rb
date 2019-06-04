class Song
  attr_reader :artist, :song_name

  def initialize(song_name, artist)
    @artist = artist
    @song_name = song_name
    @times_played = 0
  end

  def full_name
    "#{@song_name} - #{@artist}"
  end

  def play!
    puts "Falalalala"
    @times_played += 1
    puts "#{@song_name} has been played #{@times_played} times"
  end

end
