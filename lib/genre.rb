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
    Song.all.map do |song|
      puts "collecting song names"
      song.name == @name
    end
  end
end
