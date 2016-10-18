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

puts ""
puts "Our ages added together:"
puts nizar.age + jose.age

puts ""
jose.age=(25)
jose.greet



puts ""
puts ""


mazda3 = Car.new("Mazda", "3", "Put put put put")
mazda3.rev_engine

puts ""

prius = Car.new("Toyota", "Prius", "...")
prius.rev_engine
