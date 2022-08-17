# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating restaurants..."
fast_food = {name: 'McDonald', address: 'Flamengo', phone_numer: '552122252693', category: 'french'}
pizza =  {name: 'Vespa', address: 'botafogo', phone_numer: '552122252694', category: 'italian'}
burguer = {name: 'TTBurger', address: 'Ipanema', phone_numer: '552122252695', category: 'belgian'}
ice_cream = {name: 'Gelato', address: 'Leblon', phone_numer: '552122252696', category: 'chinese'}
desert = {name: 'Cookie', address: 'Gavea', phone_numer: '552122252697', category: 'japonese'}

[fast_food, pizza, burguer, ice_cream, desert].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
