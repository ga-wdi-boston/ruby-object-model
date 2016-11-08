# A class of albums
class Album
  attr_accessor :tracks

  def initialze
    @tracks = []
  end
end

# A class of songs
class Song
  def initialize(title)
    @title = title
  end
end

lemonade = Album.new
lemonade.tracks << Song.new('Formation')
