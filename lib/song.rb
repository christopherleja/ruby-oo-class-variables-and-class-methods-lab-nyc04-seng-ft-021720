require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@artist_count = {}
  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
   
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artist_count
    @@artists.each do |artist|
      if artist == @artist
        artist_count += 1
        @@artist_count = {@artist => artist_count}
      end
    end
    @@artist_count
  end
  
end