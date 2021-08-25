# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Clearing database..."

Restaurant.destroy_all

puts "Building database..."

restaurant = { name: "Balan Deli", address: "Neu Balan", description: "good for lunch", qr_code: "https://the-card.herokuapp.com/restaurants/1" }

restaurant_one = Restaurant.create!(restaurant)

menu_one = { name: "Schnitzel", category: "mains", price: 10, description: "your typical Wiener Schnitzel" }
menu_two = { name: "Crispy duck", category: "mains", price: 12, description: "Best duck in town" }
menu_three = { name: "Beer", category: "drinks", price: 4, description: "Augustiner" }
menu_four = { name: "Coca Cola", category: "drinks", price: 3, description: "cola" }
menu_five = { name: "Schnaps", category: "drinks", price: 3, description: "Kirschwasser" }

[menu_one, menu_two, menu_three, menu_four, menu_five].each do |menu|
  menu_item = MenuItem.new(menu)
  menu_item.restaurant = restaurant_one
  menu_item.save
end


puts "Finished"
