class PizzasController < ApplicationController
  def create
    @order = Order.find(params[:order_id])
    @pizza = @order.pizzas.new(pizza_params)

    if @pizza.save
      redirect_to order_path(@order)
    else
      render "orders/show"
    end
  end

  def show
    @pizza = Pizza.find(params[:id])
    @topping = Topping.new

    render :show
  end


  private

  def pizza_params
    params.require(:pizza).permit(:size, :price)
  end
end
