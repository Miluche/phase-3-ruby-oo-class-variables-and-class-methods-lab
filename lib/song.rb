class Song
  attr_reader :name, :artist, :genre

  @@artists = []
  @@artists_count = {}
  @@genres = []
  @@genre_count = {}
  @@count = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@artists << artist
    @@genres << genre
    @@count += 1
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genre_count = @@genres.tally
  end

  def self.artist_count
    @@artists_count = @@artists.tally
  end

  def self.count
    @@count
  end
end