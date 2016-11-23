class Sandwich < ApplicationRecord
    # SandwichIngredient --> sandwich_ingredients
  has_many :sandwich_ingredients
  has_many :ingredients, through: "sandwich_ingredients"

  def update_calories
    new_total = self.ingredients.reduce(0) do |sum, an_ingredient|
      sum + an_ingredient.calories
    end

    self.total_calories = new_total
    self.save

    # self == the_sandwich
  end
end
