# lib/post.rb

class Post
  attr_accessor(:title, :date, :text)

  def initialize(title, date, text)
    @title = title
    @date = date
    @text = text
  end

  def print
    puts @title
    puts "------------"
    puts @text
    puts ""
    puts "<=================>"
    puts ""
  end
end
