class SandwichViewsController < ApplicationController
  before_action :authenticate_user!

  def index
    @sandwiches_list = Sandwich.all
    render :index
  end

  def show
    @the_sandwich = Sandwich.find(params[:id])
    @sandwich_ingredients_list = @the_sandwich.ingredients
    @all_ingredients = Ingredient.all
    render :show
  end
end
