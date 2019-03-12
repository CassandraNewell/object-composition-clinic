class Jukebox
  def initialize(requested_songs, available_songs)
    # Your code here
  end

  def add_track!(new_track)
    if @available_songs.include?(new_track)
      @requested_songs.push(new_track)
    end
    @available_songs.include?(new_track)
  end

  def play!
    current_song = @requested_songs.shift
    puts "Now playing #{current_song} 🎶"
    @requested_songs.push(current_song)
  end
end
