# app.rb

require_relative("lib/authenticator.rb")
require_relative("lib/word_counter.rb")

puts ""
puts "Hello user. Please identify yourself."
puts ""

puts "Username:"
username_input = gets.chomp

puts "Password:"
password_input = gets.chomp

puts ""


the_authenticator = Authenticator.new


if the_authenticator.valid_credentials?(username_input, password_input) == false
  puts "Invalid credentials. Access Denied."
else
  puts "Access Granted."


  puts ""
  puts "Please enter some text to count the words:"
  text_input = gets.chomp

  word_thing = WordCounter.new(text_input)

  count = word_thing.count_words

  puts ""
  puts "Your text has #{count} words."
end
