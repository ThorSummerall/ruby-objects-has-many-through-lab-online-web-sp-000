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
    list_of_songs = []
    Song.all.map do |song|
      puts "collecting song names"
      song.name << list_of_songs
    end
    list_of_songs
  end
end
