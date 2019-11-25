require_relative '../config/environment.rb'


artist1 = Artist.new("Salvador Dali", 20)
artist2 = Artist.new("Leonardo", 50)
artist3 = Artist.new("Andy Warhol", 10)

gallery1 = Gallery.new("Met", "New York")
gallery2 = Gallery.new("Tate", "London")
gallery3 = Gallery.new("Tretyakovskaya Gallery", "Moscow")

painting1 = Painting.new(artist2, "Mona Lisa", 750_000, gallery3)
painting2 = Painting.new(artist1, "Black Square", 650_000, gallery2)
painting3 = Painting.new(artist3, "Cambell Soup", 500_000, gallery1)
painting4 = Painting.new(artist1, "Minerva", 200_000, gallery1)
painting5 = Painting.new(artist2, "Autoportrait", 170_000, gallery2)
painting6 = Painting.new(artist3, "Sunset", 350_000, gallery3)


binding.pry

puts "Bob Ross rules."
