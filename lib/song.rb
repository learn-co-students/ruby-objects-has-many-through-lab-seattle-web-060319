class Song
  attr_accessor :title, :genre, :artist

  @@all = []

  
  def initialize(title, artist, genre)
    @artist = artist
    @title = title
    @genre = genre
    @@all << self
  end

  def artist
    @artist
  end

  def self.all
    @@all
  end
end