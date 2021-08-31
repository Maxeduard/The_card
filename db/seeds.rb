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

restaurant = { name: "Balan Deli", address: "Neu Balan", description: "good for lunch", qr_code: "https://thecardapp.biz/restaurants/1" }

restaurant_one = Restaurant.create!(restaurant)

menu_one = { name: "Schnitzel", category: "mains", price: 10, description: "Your typical Wiener Schnitzel", image_url: "https://images.unsplash.com/photo-1599921841143-819065a55cc6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2378&q=80" }
menu_two = { name: "Crispy duck", category: "mains", price: 12, description: "Best duck in town", image_url: "https://images.unsplash.com/photo-1582391123232-6130296f1fcd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80" }
menu_three = { name: "Beer", category: "drinks", price: 4, description: "Augustiner", image_url: "https://images.unsplash.com/photo-1608270586620-248524c67de9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80" }
menu_four = { name: "Coca Cola", category: "drinks", price: 3, description: "Cola", image_url: "https://images.unsplash.com/photo-1624552184280-9e9631bbeee9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=933&q=80" }
menu_five = { name: "Chicken Curry", category: "mains", price: 8, description: "The indian option", image_url: "https://images.unsplash.com/photo-1534939561126-855b8675edd7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2734&q=80" }
menu_six = { name: "Ravioli", category: "mains", price: 7, description: "with Champion", image_url: "https://images.unsplash.com/photo-1587740908075-9e245070dfaa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80" }
menu_seven = { name: "Ice Tea", category: "drinks", price: 3, description: "Lemon", image_url: "https://images.unsplash.com/photo-1584351056582-50d8bbb8ea18?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80" }
menu_eight = { name: "Spaghetti", category: "mains", price: 8, description: "Cabonara", image_url: "https://images.unsplash.com/photo-1608334481162-bba440193a20?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=668&q=80" }

[menu_one, menu_two, menu_three, menu_four, menu_five, menu_six, menu_seven, menu_eight].each do |menu|
  menu_item = MenuItem.new(menu)
  menu_item.restaurant = restaurant_one
  menu_item.save
end


puts "Finished"
