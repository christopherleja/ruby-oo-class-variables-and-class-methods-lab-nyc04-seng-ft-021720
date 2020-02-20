require 'pry'

class Song
  attr_accessor :name, :artist, :genre, :artist_count, :artist_hash
  
  @@count = 0
  @@genres = []
  @@artists = []
 
  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
    @artist_count += 1
    @artist_hash = {@artist: @artist_count)
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
  
  def self.genre_count
    @@genres.each do |genre|
      if 
  end
  
  def self.artist_count
    @@artists.each do |artist|
      if artist == @artist
        artist_count += 1
        {@artist => artist_count}
      end
    end
  end
  
end