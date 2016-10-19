# lib/blog.rb

class Blog
  def initialize
    @posts = []
    @page_start = 0
    @page_end = 2
  end

  def add_post(new_post)
    @posts.push(new_post)
  end

  def go_next
    # 0..2   ->   3..5
    @page_start += 3
    @page_end += 3
  end

  def go_prev
    # 6..8   ->   3..5
    @page_start -= 3
    @page_end -= 3
  end

  def print_current_page
    puts ""

    # @page_start = 6
    # @page_end = 8
    current_posts = @posts[@page_start..@page_end]
    # @posts[6..8]

    current_posts.each do |the_post|
      the_post.print
    end
  end
end
