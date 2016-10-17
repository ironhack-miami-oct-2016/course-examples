heroes_array = ["Batman", "Green Lantern", "Superman", "The Flash", "Cyborg", "Wonder Woman", "Aquaman"]

lowercase_array = []

heroes_array.each do |x|
  lowercase_array.push( x.downcase )
end

#---------------------------------

lowercase_array = heroes_array.map do |x|
  x.downcase
end

#    Original Array     |    Lowercase Array
#    ---------------------------------------
# 0:  "Batman"         ->  "batman"
# 1:  "Green Lantern"  ->  "green lantern"
# 2:  "Superman"       ->  "superman"
# 3:  "The Flash"      ->  "the flash"
# 4:  "Cyborg"         ->  "cyborg"
# 5:  "Wonder Woman"   ->  "wonder woman"
# 6:  "Aquaman"        ->  "aquaman"


lengths_array = heroes_array.map do |x|
  x.length
end

puts "ORIGINAL ARRAY"
puts "--------------"
puts heroes_array

puts ""
puts ""
puts ""

puts "NEW ARRAY"
puts "---------"
puts lowercase_array

puts ""
puts ""
puts ""

puts "LENGTHS"
puts "-------"
puts lengths_array
