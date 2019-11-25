class Gallery

  attr_reader :name, :city

  @@all = [] 
  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    # array of paintings in a gallery
    Painting.all.select {|paintings| paintings.gallery == self}
  end

  def artists
    # Returns an array of all artists that have a painting in a gallery
    paintings.map {|paintings| paintings.artist}
  end

  def artists_names
    artists.map {|artists| artists.name}
  end

  def most_expensive_painting
    # Returns an instance of the most expensive painting in a gallery
    highest_value = paintings.map {|paintings| paintings.price}.max
    paintings.select {|paintings| paintings.price == highest_value}
  end


end
