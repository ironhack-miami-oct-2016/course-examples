# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


sandwichA = Sandwich.create!(name: "Croqueta Preparada", bread_type: "Puerto Rican Bread")


ingredientA = Ingredient.create!(name: "croquetas", calories: 175)
ingredientB = Ingredient.create!(name: "swiss cheese", calories: 50)
ingredientC = Ingredient.create!(name: "ham", calories: 100)


sandwichA.ingredients.push(ingredientA)
sandwichA.ingredients.push(ingredientB)
sandwichA.ingredients.push(ingredientC)
sandwichA.update_calories
