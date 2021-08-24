# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Clearing database..."

Restaurant.destroy_all

user = User.create(email: "test@test.com", password: "123123")

puts "Building database..."

restaurant_two = { name: "Balan Deli", address: "Neu Balan", description: "good for lunch", user: user }
restaurant_one = { name: "Balan Deli", address: "Neu Balan", description: "good for lunch", user: user }
restaurant_three = { name: "Balan Deli", address: "Neu Balan", description: "good for lunch", user: user }
restaurant_four = { name: "Balan Deli", address: "Neu Balan", description: "good for lunch", user: user }
restaurant_five = { name: "Balan Deli", address: "Neu Balan", description: "good for lunch", user: user }

[restaurant_one, restaurant_two, restaurant_three, restaurant_four, restaurant_five].each do |restaurant|
  Restaurant.create!(restaurant)
end

puts "Finished"
