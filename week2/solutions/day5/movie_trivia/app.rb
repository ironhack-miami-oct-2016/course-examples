require "bundler/setup"
require "sinatra"
require "sinatra/reloader" if development?
require "imdb"

require_relative "lib/movie_filter.rb"


get "/" do
    erb :home
end

get "/game" do
    @title = params[:title]

    search = Imdb::Search.new(@title)
    movie_filter = MovieFilter.new(search.movies)

    @movies = movie_filter.filter(9)

    if @movies.length < 2
      erb :not_enough_movies
    else
      @results = search.movies.length
      @correct = @movies.sample

      erb :game
    end
end
