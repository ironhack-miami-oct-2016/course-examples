# app.rb

require "sinatra"

get "/" do
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
