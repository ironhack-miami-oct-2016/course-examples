countries = ["Puerto Rico", "USA", "Nicaragua", "France", "Zimbabwe", "Mongolia", "Argentina", "Cuba", "Nigeria", "Haiti"]

puts ""
puts "Countries represented in this room:"
puts "-----------------------------------"

countries.each do |a_country|
  puts "Some of us are from #{a_country}!!"
end

puts ""

uppercase_countries = countries.map do |a_country|
  a_country.upcase
end


puts "COUNTRIES REPRESENTED IN THIS ROOM (IN UPPERCASE):"
puts "--------------------------------------------------"

uppercase_countries.each do |a_country|
  puts "SOME OF US ARE FROM #{a_country}!!"
end
