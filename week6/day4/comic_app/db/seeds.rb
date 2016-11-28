# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

clark = User.create!(first_name: "Clark", last_name: "Kent", email: "clark@dailyplanet.com", password: "whatever", password_confirmation: "whatever")
tony = User.create!(first_name: "Tony", last_name: "Stark", email: "tony@stark.sexy", password: "whatever", password_confirmation: "whatever")
rick = User.create!(first_name: "Rick", last_name: "Grimes", email: "rick@zombies.co", password: "whatever", password_confirmation: "whatever")


clark.comics.create!(title: "Watchmen", publisher: "Vertigo")
clark.comics.create!(title: "Walking Dead", publisher: "Planeta")


rick.comics.create!(title: "V for Vendetta", publisher: "Vertigo")
rick.comics.create!(title: "300", publisher: "Norma")


tony.comics.create!(title: "The Unbeatable Squirrel Girl", publisher: "Marvel")
tony.comics.create!(title: "Thunderbolts", publisher: "Marvel")
