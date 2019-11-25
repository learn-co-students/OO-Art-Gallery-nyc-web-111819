class Painting

  attr_reader :title, :price, :artist
  attr_accessor :gallery

  @@all = []

  def initialize(title, artist, price, gallery)
    @title = title
    @artist = artist
    @price = price
    @gallery = gallery

    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    @@all.map {|paintings| paintings.price}.sum
  end

end
