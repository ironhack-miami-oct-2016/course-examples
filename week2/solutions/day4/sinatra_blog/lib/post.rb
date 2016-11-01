class Post
  attr_reader :title, :date, :content

  def initialize(title, date, content)
    @title = title
    @date = date
    @content = content
  end
end
