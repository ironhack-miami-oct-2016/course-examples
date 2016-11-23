class Ingredient < ApplicationRecord
    # SandwichIngredient --> sandwich_ingredients
  has_many :sandwich_ingredients
  has_many :sandwiches, through: "sandwich_ingredients"
end
