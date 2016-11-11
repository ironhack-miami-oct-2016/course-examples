# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

han = User.create!(name: "Han Solo", email: "han@smugglers.sexy")
chewie = User.create!(name: "Chewbacca", email: "chewie@smugglers.sexy")
User.create!(name: "Rey", email: "rey@smugglers.sexy")

han.products.create!(title: "Rathtars", deadline: Time.now + 1.week, description: "They were highly dangerous creatures known for hunting in packs, and were involved in an incident known as the Trillia Massacre.")
han.products.create!(title: "Luck Module", deadline: Time.now + 2.weeks, description: "Devices that are scientifically proven to increase your luck.")

chewie.products.create!(title: "Bowcaster", deadline: Time.now + 9.days, description: "A bowcaster, also known as a laser crossbow, was a type of traditional, handcrafted projectile weapon commonly used by Wookiees.")
