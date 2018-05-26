class Song 
  @@all = []
  attr_accessor :song, :artist, :genre 
  
  def initialize(song, artist, genre)
    @song = song 
    @artist = artist 
    @genre = genre 
  end 
  
  def all 
    @@all 
  end 
  
end 