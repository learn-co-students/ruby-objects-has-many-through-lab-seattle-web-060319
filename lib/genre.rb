class Genre

attr_accessor :name

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def artist
  Song.all.collect do |song|
    song.artist if song.genre == self
  end
end

def songs
  Song.all.select do |song|
    song.genre == self
  end
end

def artists
  songs.collect do |song_with_self_genre|
    song_with_self_genre.artist
  end
end

def self.all
  @@all
end

end
