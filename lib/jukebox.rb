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
    @playlist.include?(new_track)
  end

  def play!
    @playlist.each do |song|
      song.play!
    end

  ## Plays just one song -- kinda redundant since we created a play! method for our Song class
  #   current_song = @playlist.shift
  #   current_song.play!
  #   # puts "Now Playing: #{current_song.full_name}"
  #   @playlist.push(current_song)
  end
end
