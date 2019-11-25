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
    # Returns an array all the paintings by an artist
    Painting.all.select {|paintings| paintings.artist == self}
  end

  def galleries
    # Returns an array of all the galleries that an artist has paintings in
    paintings.map {|paintings| paintings.gallery}.uniq
  end

  def cities
    # Return an array of all cities that an artist has paintings in
    galleries.map {|galleries| galleries.city}
  end

  def self.total_experience
    # Returns an integer that is the total years of experience of all artists
    @@all.map {|artists| artists.years_experience}.sum
  end

  def prolific 
    # paintings / years_experience
    paintings.length / years_experience
  end


  def self.most_prolific
    # Returns an instance of the artist with the highest amount of paintings per year of experience
    # paintings / years_experience
    most_prolific = @@all.map {|artists| artists.prolific}.max
    @@all.select {|artists| artists.prolific == most_prolific}

  end

  def create_painting(title, price, gallery)
    # Given the arguments of title, price and gallery, creates a new painting belonging to that artist
    Painting.new(title, self, price, gallery)
  end


end
