class MovieFilter
    def initialize(movies)
        @movies = movies
    end

    def filter(amount)
        filtered = []
        index = 0

        while filtered.length != amount && index != @movies.length
            movie = @movies[index]

            if movie.poster != nil
                filtered.push(movie)
            end

            index += 1
        end

        filtered
    end
end
