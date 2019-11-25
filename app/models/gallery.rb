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
    Painting.all.select {|painting|
    painting.gallery == self
    }
  end

  def artists
    paintings.map {|painting|
    painting.artist
    }
  end

  def artist_names
    artists.map {|artist|
    artist.name
    }
  end

  def most_expensive_painting
    most_expensive_painting = 0
    paintings.each {|painting|
    if painting.price > most_expensive_painting
      most_expensive_painting = painting.price
    end
    }
    most_expensive_painting
  end

end
