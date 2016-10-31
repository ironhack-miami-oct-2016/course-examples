require_relative "../lib/movie_filter"

# Fake movie class to act as a stand-in for
# the IMDB gem's movie class.

class FakeMovie
  # Has a poster method just like IMDB's movie
  attr_accessor :poster
end


RSpec.describe "MovieFilter" do
  let(:movie_no_poster) { FakeMovie.new }

  let(:movie_with_poster) do
    the_movie = FakeMovie.new
    the_movie.poster = "http://example.com"
    the_movie
  end

  let(:the_movie_filter) do
    # 2 movies without posters
    movies = [ movie_no_poster, movie_no_poster ]

    # 20 movies with posters
    20.times do
      movies.push( movie_with_poster )
    end

    # 22 movies total
    movie_filter = MovieFilter.new(movies)
    movie_filter
  end

  it "returns the correct amount of movies" do
    fifteen_movies = the_movie_filter.filter(15)
    expect( fifteen_movies.length ).to eq(15)

    five_movies = the_movie_filter.filter(5)
    expect( five_movies.length ).to eq(5)
  end

  it "removes movies without posters" do
    movies_array = the_movie_filter.filter(40)

    movies_array.each do |the_movie|
      expect( the_movie.poster ).not_to be_nil
    end
  end
end
