# lib/word_counter.rb

class WordCounter
  def initialize(text)
    @text = text
  end

  def count_words
    words_array = @text.split(" ")
    words_array.length
  end
end
