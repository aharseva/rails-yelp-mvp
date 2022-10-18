# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Creating restaurants"

dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "japanese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian"}
kriket =  {name: "Kriket", address: "56A Shoreditch High St, London E1 6PQ", category: "french"}
pizza_express =  {name: "Pizza Express", address: "5 Coal Lane, London E1 6PQ", category: "italian"}
hoxton =  {name: "Hoxton", address: "1A Shoreditch High St, London E1 6PQ", category: "belgian"}

[dishoom, pizza_east, kriket, pizza_express, hoxton].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished "
