require "sinatra"
require "sinatra/reloader" if development?

require_relative "lib/product.rb"


bacon = Product.new("Bacon", 6, "http://www.drinkamara.com/wp-content/uploads/2015/03/bacon_blog_post.jpg")
beer_cheese = Product.new("Beer cheese", 5, "https://si.wsj.net/public/resources/images/OD-BF205A_BEERC_P_20150128171247.jpg")
four_wheeler = Product.new("Four wheelers", 249, "https://s-media-cache-ak0.pinimg.com/736x/c0/75/04/c07504f6a98f254824dc15b587b41ae0.jpg")
moonshine = Product.new("Moonshine", 10, "http://i1.wp.com/brilliantstream.com/wp-content/uploads/2014/10/ApDist-03.jpg")
gun = Product.new("Magnum", 175, "https://s-media-cache-ak0.pinimg.com/originals/d1/d3/52/d1d352861dbda0fad063bec191d38799.jpg")


products = [bacon, beer_cheese, four_wheeler, moonshine, gun]


get "/" do
  @products_list = products
  erb :home
end


get "/new_product" do
  erb :product_form
end

post "/add_product" do
  if params[:agree_to_terms] == "on"
    new_product = Product.new(params[:product_name], params[:product_price], params[:product_picture])

    products.push(new_product)

    redirect to("/")
  else
    @message = "You need to agree to the terms. This is America."
    erb :product_form
  end
end
