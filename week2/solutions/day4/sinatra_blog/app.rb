require "sinatra"
require "sinatra/reloader"

require_relative("lib/post.rb")
require_relative("lib/blog.rb")


seconds_in_day = 24 * 60 * 60

# Our fake database
post1 = Post.new("Post number 1", Time.now - 3 * seconds_in_day, "This is my first post")
post2 = Post.new("Hello World", Time.now - 1 * seconds_in_day, "This is my first post on my cool new blog")
post3 = Post.new("Best Pizzerias in Miami", Time.now, "Pizzerias in Miami blah blah blah.")

blog = Blog.new
blog.add_post(post1)
blog.add_post(post2)
blog.add_post(post3)
# End fake database


get "/" do
  @posts = blog.latest_posts
  erb(:list_of_posts)
end

get "/post_details/:post_id" do
  index = params[:post_id].to_i
  @post = blog.latest_posts[index]

  if @post == nil
    redirect to "/"
  else
    erb(:post_details)
  end
end


get "/new_post" do
  erb(:new_post_form)
end

# <form method="post" action="/process_post">
#                |                  |
# ----------------                  |
# |         -------------------------
# |         |
post "/process_post" do
  new_post = Post.new( params[:post_title], Time.now, params[:post_text] )
  blog.add_post( new_post )

  redirect to("/")
end
