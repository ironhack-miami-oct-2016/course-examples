class ToppingsController < ApplicationController
  def create
    @pizza = Pizza.find(params[:pizza_id])
    @topping = @pizza.toppings.new(topping_params)

    if @topping.save
      redirect_to pizza_path(@pizza)
    else
      render "pizzas/show"
    end
  end


  private

  def topping_params
    params.require(:topping).permit(:name)
  end
end
