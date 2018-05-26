class Artist 
  @@all = []
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name 
    @songs = []
    @@all << self 
  end 
  
  
  def new_song(name, genre)
    song = Song.new
    song.name = name 
    song.genre = genre 
    @songs << song 
  end
  
  
  def songs 
    Songs.all.select { |song| song.artist == self }
  end 
  
  
  def self.all 
    @@all 
  end 
  
end 