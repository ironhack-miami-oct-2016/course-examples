require_relative("../lib/blog.rb")
require_relative("../lib/post.rb")


RSpec.describe Blog do
  seconds_in_day = 24 * 60 * 60

  let(:the_blog) { Blog.new }
  let(:post1) { Post.new("Post number 1", Time.now - 3 * seconds_in_day, "This is my first post") }
  let(:post2) { Post.new("Hello World", Time.now - 1 * seconds_in_day, "This is my first post on my cool new blog") }

  it("#posts returns an array of posts") do
    expect(the_blog.posts).to eq( [] )
  end

  it("#add_post adds a post to the list of posts") do
    the_blog.add_post(post1)
    the_blog.add_post(post2)
    expect(the_blog.posts).to eq( [post1, post2] )
  end

  it("#latest_posts returns an array with the most recent posts first") do
    the_blog.add_post(post1)
    the_blog.add_post(post2)
    expect(the_blog.latest_posts).to eq( [post2, post1] )
  end
end
