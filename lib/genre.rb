class Genre

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    song.genre = self
    @songs << song
  end

  def artists
    @songs.collect do |song|
      song.artist
    end
  end
end
