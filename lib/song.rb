class Song
  @@count = 0
  @@genres = []
  @@artists = []
  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    @name, @artist, @genre = name, artist, genre
    @@count += 1
    @@genres << genre if !@@genres.include(genre)
    @@artists << artist if !@@artists.include(artist)
  end

  def count
    @@count
  end

  def self.genres

  end
end
