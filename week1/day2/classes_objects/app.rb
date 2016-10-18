# app.rb

require_relative("lib/user.rb")
require_relative("lib/car.rb")


nizar = User.new("Nizar", "nizar@example.com", 30, "ambiguous", "cismale")
  #           |     |            |               |      |
  #          --     |      ------   --------------      |
  #          |      |      |        |                   |
  # def initialize(name, email,    age,              ethnicity, gender)

nizar.login
nizar.greet

puts ""
puts ""

jose = User.new("Jose", "jose@example.com", 36, "ambiguous", "cismale")
jose.login
jose.greet
