class Jukebox
  attr_reader :library, :playlist

  def initialize(library, requested_songs)
    @library = library
    @playlist = []

    requested_songs.each do |song|
      add_track!(song)
    end
  end

  def add_track!(new_track)
    if @library.include?(new_track)
      @playlist.push(new_track)
    end

    # This will return true if the playlist includes the track
    # and false otherwise -- helpful as the return for a method
    # because it tells us whether the add was successful or not
    @playlist.include?(new_track)
  end

  def play!
    current_song = @playlist.shift
    puts "Now Playing: #{current_song}"
    @playlist.push(current_song)
  end
end
