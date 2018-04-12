class Song
  @@count = 0
  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    @name, @artist, @genre = name, artist, genre
    @@count += 1
  end

  def count
    @@count
  end
end
