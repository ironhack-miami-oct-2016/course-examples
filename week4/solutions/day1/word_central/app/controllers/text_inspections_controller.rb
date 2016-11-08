class TextInspectionsController < ApplicationController
  def new
    render :new
  end

  def create
    @text = params[:text_inspection][:user_text]
    words_array = @text.split(" ")
    @word_count = words_array.length
    @estimated_seconds = @word_count * (60.0 / 275.0)

    word_count = Hash.new(0)
    words_array.each do |one_word|
      word_count[one_word] += 1
    end

    all_words_sorted = word_count.sort_by { |word, count| -count }
    @top_ten_words = all_words_sorted.first(10)

    render :results
  end
end
