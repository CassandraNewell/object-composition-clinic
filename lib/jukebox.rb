class Jukebox
  attr_reader :available_songs, :requested_songs

  def initialize(available_songs, requested_songs)
    @available_songs = available_songs
    @requested_songs = []

    requested_songs.each do |song|
      add_track!(song)
    end
  end

  def add_track!(new_track)
    if @available_songs.include?(new_track)
      @requested_songs.push(new_track)
    end
    @requested_songs.include?(new_track)
  end

  def play!
    current_song = @requested_songs.shift
    puts "Now Playing: #{current_song}"
    @requested_songs.push(current_song)
  end
end
