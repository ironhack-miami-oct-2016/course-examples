class IngredientsController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    ingredients = Ingredient.all
    render json: ingredients
  end

  def create
    ingredient = Ingredient.new(ingredient_params)
    ingredient.save

    render json: ingredient
  end

  def show
    ingredient = Ingredient.find(params[:id])
    render json: ingredient
  end

  def update
    ingriedient = Ingredient.find(params[:id])
    ingriedient.update(ingredient_params)

    render json: ingriedient
  end

  def destroy
    ingredient = Ingredient.find(params[:id])
    ingredient.destroy

    render json: ingredient
  end


  private

  def ingredient_params
      # Ingredient.new(
      #   name: params[:ingredient][:name],
      #   calories: params[:ingredient][:calories])
      #                         |           |
      #                 ---------           -------
      #                 |                         |
    params.require(:ingredient).permit(:name, :calories)
  end
end
