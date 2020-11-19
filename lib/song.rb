require 'pry'

class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@songs = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << self.artist
    @@genres << self.genre
    @@songs << self
    @@genreHash = {}
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
  
=begin
  def self.genre_count
    @@songs.each do |song|
      @@genreHash[song.genre] ? @@genreHash[song.genre] += 1 : @@genreHash[song.genre] = 1
    end
    @@genreHash
  end
=end

  def self.genre_count
    @@count.times do |i|
      @@genreHash[@@genres[i]] ? @@genreHash[@@genres[i]] += 1 : @@genreHash[@@genres[i]] = 1
    end
    @@genreHash
  end

  def self.artist_count
    @@count.times do |i|
      @@genreHash[@@artists[i]] ? @@genreHash[@@artists[i]] += 1 : @@genreHash[@@artists[i]] = 1
    end
    @@genreHash
  end
end