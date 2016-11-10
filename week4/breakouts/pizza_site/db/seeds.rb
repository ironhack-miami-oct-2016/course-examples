# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pie.create!(flavor: "Pepperoni Pizza", price: 15, size: "normal")
Pie.create!(flavor: "Cheese Pizza", price: 100, size: "large")
Pie.create!(flavor: "Apple Pie", price: 20, size: "small")
Pie.create!(flavor: "Pumpkin Pie", price: 10, size: "medium")
Pie.create!(flavor: "Key Lime Pie", price: 50, size: "extra large")

puts "There are now #{Pie.count} pies in the database"
