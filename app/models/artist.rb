class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    self.class.all << self 
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end 

  def self.all 
    @@all 
  end 

  def paintings 
    Painting.all.select do |painting|
      painting.artist == self 
    end 
  end 

  def galleries
    unique_galleries = paintings.map do |painting|
      painting.gallery
    end 
    unique_galleries.uniq
  end 

  def cities 
    unique_cities = paintings.map do |painting|
      painting.gallery.city 
    end 
    unique_cities.uniq
  end 

  # Returns an instance of the artist with the highest amount of paintings per year of experience.
  def self.most_prolific 
    self.all.max_by do |artist|
      artist.paintings.length / artist.years_experience.to_f
    end 
  end 

  def self.total_experience 
    self.all.reduce(0) do |total, artist|
      total + artist.years_experience 
    end 
  end 

end
