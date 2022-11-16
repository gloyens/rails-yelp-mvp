# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
old_street = { name: 'Old Street Chinese', address: 'Old Street', category: 'chinese' }
papa_john = { name: 'Papa John\'s', address: 'Farringdon', category: 'italian' }
itsu = { name: 'Itsu', address: 'Holborn', category: 'japanese' }
big_nose = { name: 'Ze Big Nose', address: 'Paris', category: 'french' }
dovetail = { name: 'The Dovetail', address: 'Clerkenwell', category: 'belgian' }

[old_street, papa_john, itsu, big_nose, dovetail].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts 'Finished!'
