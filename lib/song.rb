class Song

  attr_accessor :artist, :genre, :name

@@count = 0

@@genres = []

@@artists = []

@@genre_hash = {}

@@artist_hash = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genres.each do |genre|
      if @@genre_hash.has_key?(genre)
      @@genre_hash[genre] += 1
    else
      @@genre_hash[genre] = 1
    end
  end
    @@genre_hash
  end

  def self.artist_count
    @@artists.each do |artist|
      if @@artist_hash.has_key?(artist)
        @@artist_hash[artist] += 1
      else
        @@artist_hash[artist] = 1
      end
    end
      @@artist_hash
    end
end
