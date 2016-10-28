require "sinatra"
require "sinatra/reloader" if development?
require "imdb"


get "/" do
  erb :home
end


get "/search_results" do
  the_search = Imdb::Search.new("aliens")

  @movies = the_search.movies

  erb :results
end
