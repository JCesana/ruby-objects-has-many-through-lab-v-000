require 'pry'
class Artist 
  @@all = []
  attr_accessor :name, :songs, :all
  
  def initialize(name)
    @name = name 
    @songs = []
    @@all << self 
  end 
  
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
    @songs << song
  end
  
  
  def songs 
    Song.all.select { |song| song.artist == self }
  end 
  
  
  def self.all 
    @@all 
  end 
  
end 