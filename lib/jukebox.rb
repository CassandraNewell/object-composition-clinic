class Jukebox
  attr_accessor :available_songs, :requested_songs

  AVAILABLE_SONGS = [
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

  def initialize(requested_songs)
    @requested_songs = []
    requested_songs.each do |song|
      if AVAILABLE_SONGS.include?(song)
        @requested_songs.push(song)
      end
    end
  end

  def shuffle!
    @requested_songs.shuffle!
  end

  def play!
    @requested_songs.shift
  end

  def add_track!(new_track)
    if AVAILABLE_SONGS.include?(new_track)
      @requested_songs.push(new_track)
    end
    AVAILABLE_SONGS.include?(new_track)
  end
end
