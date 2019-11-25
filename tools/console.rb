require_relative '../config/environment.rb'

leonardo = Artist.new("Da Vinci", 60)
gagosian = Gallery.new("Gagosian", "NYC")
david_zwirner = Gallery.new("Zwirner", "London")
mona_lisa = Painting.new("Mona Lisa", 100000, leonardo, gagosian)
last_supper = Painting.new("Last Supper", 20000, leonardo, gagosian)
andy_warhol = Artist.new("Andy Warhol", 60)
soup_can = Painting.new("Soup Can", 20000, andy_warhol, gagosian)
marilyn = Painting.new("Marilyn Monroe", 15000, andy_warhol, david_zwirner)
brillo_box = Painting.new("Brillo Box", 3000, andy_warhol, david_zwirner)

binding.pry

puts "Bob Ross rules."
