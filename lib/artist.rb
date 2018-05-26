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
    @songs << self
  end
  
  
  def songs 
    Songs.all.select { |song| song.artist == self }
  end 
  
  
  def self.all 
    @@all 
  end 
  
end 