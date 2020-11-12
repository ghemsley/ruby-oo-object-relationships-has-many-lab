class Artist
  @@all = []
  attr_accessor :name
  attr_reader :songs
  def initialize(name)
    @name = name
    @songs = []
    @@all.push(self)
  end

  def add_song(song)
    song.artist = self
    songs.push(song)
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    songs.push(song)
  end

  def self.all
    @@all
  end

  def self.song_count
    Song.all.reject do |song|
      song.artist.nil?
    end.length
  end
end
