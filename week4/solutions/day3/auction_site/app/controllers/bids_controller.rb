class BidsController < ApplicationController

  def create
    @the_product = Product.find(params[:product_id])
    @the_bid = @the_product.bids.new(bid_params)

    the_user = User.find_by(email: @the_bid.user_email)
    if the_user.present?
      @the_bid.user_id = the_user.id
    end

    if @the_bid.save
      flash[:notice] = "Bid for #{@the_product.title} created"
      redirect_to product_path(@the_product)
    else
      flash.now[:alert] = "Bid couldn't be created"
      @current_bids = @the_product.bids.order(amount: "desc")
      
      render "products/show"
    end
  end


  private

  def bid_params
    params.require(:bid).permit(:amount, :user_email)
  end
end
