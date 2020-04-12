class Artist 
  
   @@all = []
   
  attr_accessor :name
#The Artist class needs a class variable @@all that begins as an empty array

  def initialize(name)
    @name = name
    @@all << self
  end
  #The Artist class needs a class method .all that lists each artist in the class variable
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def genres
    songs.map {|song| song.genre}
  end
  
  def self.all
    @@all
  end
  
  def new_song(song, genre)
    Song.new(name, self, genre)
  end
  

end