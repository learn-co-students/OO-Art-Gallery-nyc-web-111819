require_relative '../config/environment.rb'

da_vinci = Artist.new("Da Vinci", 10)
squidward = Artist.new("Squidward", 15)
van = Artist.new("Van Gogh", 8)
tony = Artist.new("Tony", 2)

moma = Gallery.new("MOMA", "NYC")
louvre = Gallery.new("Louvre", "Paris")
bbam = Gallery.new("BBAM", "Bikini Bottom")
art = Gallery.new("Mueseum of Art", "NYC")


mona_lisa = Painting.new("Mona Lisa", da_vinci, 50.00, louvre)
bold = Painting.new("Bold and Brsh", squidward, 10000000, bbam)
starry = Painting.new("Starry Night", van, 24000.00, art)
code = Painting.new("Ruby Code", tony, 500000000.00, moma)
error = Painting.new("Error Message", tony, 30015000.00, louvre)

binding.pry

puts "Bob Ross rules."
