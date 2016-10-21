# lib/word_chain.rb

class WordChain
  def initialize(dictionary)
    @dictionary = dictionary
  end

  def print_chain(start_word, end_word)
    puts "#{start_word} --> #{end_word}"
    puts start_word

    # Keep going as long as the two words don't match
    while start_word != end_word
      last_letter = start_word.length - 1

      # Amount of attempts to change a letter
      attempts = 0

      # Amount of failed attempts to change a letter
      failed_attempts = 0

      (0).upto(last_letter) do |i|
        # If the letters in this position don't match
        if start_word[i] != end_word[i]
          attempts += 1

          letter_backup = start_word[i]
          start_word[i] = end_word[i]

          if @dictionary.exists?(start_word)
            puts start_word
          else
            start_word[i] = letter_backup
            failed_attempts += 1
          end
        end
      end

      # Break out of the while if you went through the entire word
      # and all attempts failed
      if failed_attempts == attempts
        puts "FAILED!"
        break
      end
    end
  end
end
