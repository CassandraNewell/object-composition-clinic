class Jukebox
  attr_reader :requested_songs

  def initialize(requested_songs, available_songs)
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
    @available_songs.include?(new_track)
  end

  def play!
    current_song = @requested_songs.shift
    current_song.play!
    @requested_songs.push(current_song)
  end
end
