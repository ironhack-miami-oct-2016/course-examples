# app.rb

require "sinatra"
require "sinatra/reloader" if development?

require "pry" if development?


enable(:sessions)


# http://localhost:4567/save_to_session/cherry_coke_zero
# http://localhost:4567/save_to_session/tea
# http://localhost:4567/save_to_session/coffee
# http://localhost:4567/save_to_session/sunkist
# http://localhost:4567/save_to_session/beer
# http://localhost:4567/save_to_session/miami_beer

get  "/save_to_session/:thing" do
  session[:beverage] = params[:thing]
  redirect to("/")
end


get "/" do
  @drank = session[:beverage]

  erb(:home)
    #   |
    #   -------
    #         |
    #  views/home.erb
end


get "/hi" do
  erb(:hipage)
    #    |
    #    -------
    #          |
    #  views/hipage.erb
end


get "/about" do

    # the erb method should be the last thing in the block
  erb(:about)
    #    |
    #    -------
    #          |
    #  views/about.erb
end


get "/best_pizza" do
  @toppings = ["pepperonni", "sausage", "basil", "spinach", "tomatoes", "onions", "parmesan"]

  erb(:best_pizza)
end





users = [
  { :full_name => "Star Wars",
    :avatar => "https://pbs.twimg.com/profile_images/783419325830934528/7Ad49etX_400x400.jpg",
    :screen_name => "starwars",},

  { :full_name => "Kevin Hart",
    :avatar => "https://pbs.twimg.com/profile_images/769775481692364801/j5nXOVaH_400x400.jpg",
    :screen_name => "KevinHart4real",},

  { :full_name => "Patrick Stewart",
    :avatar => "https://pbs.twimg.com/profile_images/790573246596931586/V8uV5TcL_400x400.jpg",
    :screen_name => "SirPatStew",},

  { :full_name => "Celine Dion",
    :avatar => "https://pbs.twimg.com/profile_images/733642354565996544/JrzvO3Y7_400x400.jpg",
    :screen_name => "celinedion",},
]




# get /starwars
# params = { :screen_name => "starwars" }

# get /SirPatStew
# params = { :screen_name => "SirPatStew" }

# get /KevinHart4real
# params = { :screen_name => "KevinHart4real" }

get "/:screen_name" do
  found_user = users.find do |the_user|
    the_user[:screen_name] == params[:screen_name]
  end

  if found_user == nil
    @screen_name = params[:screen_name]
    status(404)
    erb(:no_user)
  else
    @full_name = found_user[:full_name]
    @avatar = found_user[:avatar]
    @screen_name = found_user[:screen_name]

    erb(:user_profile)
  end
end
