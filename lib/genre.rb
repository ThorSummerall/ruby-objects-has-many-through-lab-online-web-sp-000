class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    return Song.all.select{|song| song.name == self}
  end

  def artists
    return songs.collect{|song| song.artist}.uniq
  end
end
