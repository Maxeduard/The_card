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
menu_eight = { name: "Spaghetti", category: "mains", price: 8, description: "Gamberetti", image_url: "https://images.unsplash.com/photo-1608334481162-bba440193a20?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=668&q=80" }
menu_nine = { name: "Ice Cream", category: "dessert", price: 3, description: "Strawberry", image_url: "https://images.unsplash.com/photo-1597249536924-b226b1a1259d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=666&q=80" }
menu_ten = { name: "Carpaccio", category: "appetizer", price: 7, description: "carpaccio", image_url: "https://images.unsplash.com/photo-1613420408779-e517581a26aa?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80" }
menu_eleven = { name: "Bruschetta", category: "appetizer", price: 6, description: "The Classic", image_url: "https://images.unsplash.com/photo-1506280754576-f6fa8a873550?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80" }
menu_twelve = { name: "Pancake", category: "dessert", price: 5, description: "With honey", image_url: "https://images.unsplash.com/photo-1565299543923-37dd37887442?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=828&q=80" }
menu_thirteen = { name: "Schnaps", category: "digestiv", price: 2, description: "Kirschwasser", image_url: "https://images.unsplash.com/photo-1525081265669-4c1bac7ccd10?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80" }
menu_fourteen = { name: "Water", category: "drinks", price: 2, description: "Stay hydrated. ", image_url: "https://images.unsplash.com/photo-1591959376511-a48af62889a3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1950&q=80" }
menu_fifteen = { name: "Grilled Veggies", category: "appetizer", price: 6, description: "Grilled veggies.", image_url: "https://images.unsplash.com/photo-1625944227313-4f7f68e6b3fa?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80" }
menu_sixteen = { name: "Chicken Wrap", category: "appetizer", price: 6, description: "Indian style", image_url: "https://images.unsplash.com/photo-1584947897804-408958123f1d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80" }
menu_seventeen = { name: "Veggie Wrap", category: "appetizer", price: 6, description: "Healthy and delicious", image_url: "https://images.unsplash.com/photo-1584947897558-4ee278fbbddf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3333&q=80" }
menu_eighteen = { name: "Mini Meat Balls", category: "appetizer", price: 8, description: "With potato salad", image_url: "https://images.unsplash.com/photo-1529042410759-befb1204b468?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2848&q=80" }
menu_nineteen = { name: "Parmesan", category: "appetizer", price: 8, description: "With arugula", image_url: "https://images.unsplash.com/photo-1589881133825-bbb3b9471b1b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80" }
menu_twenty = { name: "Yakitori", category: "appetizer", price: 8, description: "Spicy Yakitori skewers", image_url: "https://images.unsplash.com/photo-1584949602334-4e99f98286a9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80" }
menu_twentyone = { name: "Bavarian Cream", category: "dessert", price: 7, description: "To die for", image_url: "https://images.unsplash.com/photo-1615235739538-95040f341ba8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80" }
menu_twentytwo = { name: "Tiramisu", category: "dessert", price: 9, description: "Because I said so", image_url:"https://images.unsplash.com/photo-1571877227200-a0d98ea607e9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2873&q=80" }

[menu_one, menu_two, menu_three, menu_four, menu_five, menu_six, menu_seven, menu_eight, menu_nine, menu_ten, menu_eleven, menu_twelve, menu_thirteen, menu_fourteen, menu_fifteen, menu_sixteen, menu_seventeen, menu_eighteen, menu_nineteen, menu_twenty, menu_twentyone, menu_twentytwo ].each do |menu|
  menu_item = MenuItem.new(menu)
  menu_item.restaurant = restaurant_one
  menu_item.save
end


puts "Finished"
