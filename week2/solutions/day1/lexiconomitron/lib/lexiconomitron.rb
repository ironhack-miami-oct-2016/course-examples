# lib/lexiconomitron.rb

class Lexiconomitron

  def eat_t(text)
    # text.gsub(/[tT]/, "")
    text.tr("tT", "")
  end

  def shazam(words_array)
    reversed_words = words_array.map do |the_word|
      eat_t(the_word.reverse)
    end

    [reversed_words.first, reversed_words.last]
  end

  def oompa_loompa(words_array)
    short_words = words_array.select do |the_word|
      the_word.length <= 3
    end

    short_words_no_t = short_words.map do |the_word|
      eat_t(the_word)
    end

    short_words_no_t
  end

end
