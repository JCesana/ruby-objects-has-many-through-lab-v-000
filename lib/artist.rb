class Artist 
  @@all = []
  attr_accessor :name
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
  def new_song(song, genre)
    song = Song.new(song, self, genre)
  end 
  
end 