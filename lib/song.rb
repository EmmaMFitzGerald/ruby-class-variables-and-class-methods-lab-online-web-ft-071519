require "pry"
class Song 
  attr_accessor :name, :artist, :genre, :genre_count, :genres
  
  @@count = 0
  @@artists = []
  @@genres = []
  @genres_count = {}

  def initialize(name, artist, genre)  
    @name = name 
    @artist = artist 
    @genre = genre
    @@count += 1 
    @@artists << artist 
    @@genres << genre
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
    hash = {}
    @@genres.each do |key|
      if hash.include?(key)
        hash[key]  1
      else 
        hash[key] = 1
      end
    end
  end
  
end