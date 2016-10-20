# lib/graph_printer.rb

class GraphPrinter
  def initialize(max_rating, array)
    @max_rating = max_rating
    @movies = array
  end

  def print_bars
    # Graph bars
    #    |#|#|#| | |#| |
    #    |#|#|#|#| |#| |
    #    |#|#|#|#|#|#| |
    #     ...

    current_rating = @max_rating

    while current_rating > 0
      print "|"

      @movies.each do |the_movie|
        if the_movie.rating >= current_rating
          print "#|"
        else
          print " |"
        end
      end

      # End the line since we've been using print
      puts ""

      current_rating -= 1
    end


    # Graph footer with numbers
    #    ---------------
    #    |1|2|3|4|5|6|7|

    print "--" * @movies.length
    puts "-"

    @movies.each_index do |index|
      print "|#{index + 1}"
    end
    puts "|"
    puts ""


    # Bottom legend with movie names
    #     1. Godfather
    #     2. Pulp Fiction
    #     ...

    @movies.each_with_index do |the_movie, index|
      puts "#{index + 1}. #{the_movie.title}"
    end
  end
end
