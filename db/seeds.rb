# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.destroy_all

puts 'Creating restaurants'
dishoom = { name: 'Dishoom', address: '7 rue de la juiverie, Nantes', category: 'chinese' }
pizza_east = { name: 'Pizza East', address: '14 rue du bouffay, Nantes', category: 'italian' }
nikashima = { name: 'nikashima', address: '325 route de vannes, Sautron', category: 'japanese' }
wok = { name: 'wok', address: '10 le clos belay, Orvault', category: 'chinese' }
mushroom = { name: 'mushroom', address: 'la poterie, Sucé', category: 'french' }
burger_house = { name: 'burger_house', address: '1 rue de la Marne, Nantes', category: 'belgian' }

[dishoom, pizza_east, nikashima, wok, mushroom, burger_house].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finishe!'
