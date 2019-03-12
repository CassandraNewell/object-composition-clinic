class Song
  def initialize(title, artist)
    @title = title
    @artist = artist
    @play_count = 0
  end

  def full_name
    "#{@title} - #{@artist}"
  end

  def play!
    puts "falalalalala"
    @play_count += 1
    puts "#{@title} has been played #{@play_count} times!"
  end
end
