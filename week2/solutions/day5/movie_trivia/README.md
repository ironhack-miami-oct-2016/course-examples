Using Nick's Custom-made IMDB gem
================================

### Step 1 ###
Add Nick's GitHub URL to the `gem "imdb"` line in your `Gemfile`.

```ruby
# Gemfile

source "https://rubygems.org"

gem "sinatra"
gem "sinatra-contrib"
gem "imdb", :git => "https://github.com/nickborbe/imdb.git"
```

See [our `Gemfile`](Gemfile#5) for an example.


### Step 2 ###
Run `bundle install`.


### Step 3 ###
Add `require "bundler/setup"` to the top of your `app.rb`.

```ruby
# app.rb

require "bundler/setup"
require "sinatra"
require "sinatra/reloader" if development?
require "imdb"
```

See [our `app.rb`](app.rb#1) for an example.
