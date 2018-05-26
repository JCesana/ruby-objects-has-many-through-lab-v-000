class Genre 
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
  def new_song(song, artist)
    Song.new(song, artist, self)
  end 
  
end 