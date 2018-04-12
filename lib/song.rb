class Song
  @@count = 0
  @@genres = []
  @@artists = []
  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    @name, @artist, @genre = name, artist, genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    unique_genres = []
    return @@genres.each { |genre| unique_genres << genre if !unique_genres.include?(genre) }
  end

  def self.artists
    unique_artists = []
    return @@artists.each { |artist| unique_artists << artist if !unique_artists.include?(artist) }
  end

  def self.genres_count
    count = {}
    self.genres.each do |genre|
      count[genre] = @@genres.select{|g| g == genre}.count
    end
    return count
  end

  def self.artists_count
    count = {}
    self.artists.each do |artist|
      count[artist] = @@artists.select{|g| g == artist}.count
    end
    return count
  end

end
