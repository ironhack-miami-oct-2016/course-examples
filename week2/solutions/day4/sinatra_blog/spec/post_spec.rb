require_relative("../lib/post.rb")


RSpec.describe Post do
  seconds_in_day = 24 * 60 * 60

  let(:day_ago) { Time.now - 1 * seconds_in_day }
  let(:the_post) { Post.new("Hello World", day_ago, "This is my first post on my cool new blog") }

  it("#title returns the title") do
    expect(the_post.title).to eq( "Hello World" )
  end

  it("#date returns the date") do
    expect(the_post.date).to eq( day_ago )
  end

  it("#content returns content") do
    expect(the_post.content).to eq( "This is my first post on my cool new blog" )
  end
end
