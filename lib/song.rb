class Song
  @@all = []
  attr_accessor :name
  attr_reader :artist
  def initialize(name)
    @name = name
    @artist = nil
    @@all.push(self)
  end

  def artist=(artist)
    @artist = artist
    artist.songs.push(self)
  end

  def artist_name
    artist.name if artist
  end

  def self.all
    @@all
  end

  def self.song_count
    all.length
  end
end
