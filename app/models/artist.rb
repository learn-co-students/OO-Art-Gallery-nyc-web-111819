class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting|
    painting.artist == self
    }
  end

  def galleries
    paintings.map {|painting|
    painting.gallery
    }
  end

  def cities
    galleries.map {|gallery|
    gallery.city
    }
  end

  def self.total_experience
    total = 0
    @@all.each {|artist|
    total += artist.years_experience
    }
    total
  end

  def create_painting(title, price, gallery)
    Painting.new(self, title, price, gallery)
  end

  def prolific
    paintings.length/years_experience.to_f
  end

  def self.most_prolific
    most_prof = (@@all.map {|a| a.prolific}).max
    @@all.find {|a| a.prolific == most_prof}
  end

end
