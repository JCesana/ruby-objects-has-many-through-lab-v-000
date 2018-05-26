class Genre 
  @@all = []
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = [] 
    @@all << self 
  end 
  
  
  def new_song(name, artist) 
    song = Song.new(name, artist, self)
  end 
  
  
  def songs 
    Songs.all.select { |genre| song.genre == self }
  end 
  
  def self.all
    @@all 
  end 
  
end 