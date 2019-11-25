class Painting

  attr_reader :artist, :title, :price, :gallery

  @@all = []

  def initialize(artist, title, price, gallery)
    @artist = artist
    @title = title
    @price = price
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    total = 0
    @@all.each {|painting|
    total += painting.price
    }
    total
  end

end
