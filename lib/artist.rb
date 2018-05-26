class Artist 
  @@all = []
  attr_accessor :name, :songs, :all
  
  def initialize(name)
    @name = name 
    @songs = []
    @@all << self 
  end 
  
  
  def new_song(name, self, genre)
    song = Song.new(name, self, genre)
    @songs << song 
  end
  
  
  def songs 
    Songs.all.select { |song| song.artist == self }
  end 
  
  
  def self.all 
    @@all 
  end 
  
end 