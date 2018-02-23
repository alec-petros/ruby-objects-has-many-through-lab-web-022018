class Song

  attr_accessor :name, :genre, :artist

  @@all = []

  def initialize(name, genre)
    @name = name
    genre.add_song(self)
    @@all << self
  end

  def self.all
    @@all
  end
end
