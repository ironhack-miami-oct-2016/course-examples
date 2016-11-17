Using JS in Rails
=================

There are few gotchas when using JavaScript in a Rails application.
When you start your new Rails project make sure you keep these things in mind.


### Step 1: Remove CoffeeScript ###

By default, Rails uses [CoffeeScript](http://coffeescript.org)
instead of JavaScript.
If you want to use JavaScript, you have to disable CoffeScript.

1. Remove (or comment out) the `coffee-rails` gem
   in your [`Gemfile`](Gemfile#L15-L16).
2. Run `bundle install` in your terminal to update your gems.
3. Delete all `.coffee` files in
   [`app/assets/javascripts/`](app/assets/javascripts/).
4. Run `rails tmp:clear` in your terminal to refresh your app's temporary files.


### Step 2: Use the `sprockets-es6` gem ###

If you are using
[JavaScript class syntax](https://ponyfoo.com/articles/es6-classes-in-depth) or
[template strings](https://ponyfoo.com/articles/es6-template-strings-in-depth),
you will get an error when you try to deploy your app to Heroku.
To avoid that error, use the `sprockets-es6` gem.

1. Add the `sprockets-es6` gem to your [`Gemfile`](Gemfile#L3)
   with the [special `require` option](Gemfile#L3).
2. Change the extension of any JavaScript files
   that use classes or template strings from `.js` to `.es6`.
   [See our `blah.es6` file](app/assets/javascripts/blah.es6)
   for an example.
3. You **should never**
   change the extensions of Rails' special JavaScript files:
   [`application.js`](app/assets/javascripts/application.js) and
   [`cable.js`](app/assets/javascripts/cable.js).


### Step 3: Don't use the document's `ready` event ###

Rails comes with a gem named
[Turbolinks](http://guides.rubyonrails.org/working_with_javascript_in_rails.html#turbolinks)
that does some funky stuff with JavaScript to make your pages load faster.
Because of that, you can't depend on the `$(document).ready()` callback.
Turbolinks provides a special event (`turbolinks:load`)
that you should use instead.

[See our `pizza.js` file](app/assets/javascripts/pizza.js#L9) for an example.
