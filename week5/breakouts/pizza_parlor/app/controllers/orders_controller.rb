class OrdersController < ApplicationController
  def new
    @order = Order.new

    render :new
  end


  def create
    @order = Order.new(order_params)

    if @order.save
      redirect_to order_path(@order)
    else
      render :new
    end
  end

  def show
    @order = Order.find(params[:id])
    @pizza = Pizza.new

    render :show
  end


  private

  def order_params
      # name="order[name]"
    params.require(:order).permit(:name)
  end
end
