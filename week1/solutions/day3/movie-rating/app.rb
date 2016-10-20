# app.rb

require("imdb")

require_relative("lib/movie_reader.rb")
require_relative("lib/graph_printer.rb")


puts ""
puts "Welcome to Movie Ratings!"
puts "========================="
puts ""

puts "We will be showing the ratings for the following works:"
puts ""


the_reader = MovieReader.new

titles_array = the_reader.read_movies_from("movies.txt")

movies_array = titles_array.map do |the_title|
  the_search = Imdb::Search.new(the_title)
  first_movie = the_search.movies[0]

  puts "- #{first_movie.title}"

  first_movie
end


puts ""

#                        Maximum Rating
#                              |
the_printer = GraphPrinter.new(10, movies_array)

the_printer.print_bars
