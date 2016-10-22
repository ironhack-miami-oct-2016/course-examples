# app.rb

require_relative("lib/caffeine_consumer.rb")
require_relative("lib/payable.rb")
require_relative("lib/programmer.rb")
require_relative("lib/designer.rb")


nizar = Programmer.new
nizar.program

puts ""

santi = Designer.new
santi.design_things
