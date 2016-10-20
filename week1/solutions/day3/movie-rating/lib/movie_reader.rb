# lib/movie_reader.rb

class MovieReader
  def read_movies_from(file_name)
    file_contents = File.read(file_name)
    titles_array = file_contents.split("\n")
    titles_array
  end
end
