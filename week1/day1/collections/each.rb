for x in 1..100
  puts x * x
end

# puts 1 * 1
# puts 2 * 2
# puts 3 * 3
# puts 4 * 4
# puts 5 * 5
# puts 6 * 6
# puts 7 * 7
# puts 8 * 8
# puts 9 * 9
# puts 10 * 10


heroes_array = ["Batman", "Green Lantern", "Superman", "The Flash", "Cyborg", "Wonder Woman", "Aquaman"]

puts ""
puts ""
puts "DC Heroes:"
i = 0

while i < heroes_array.length
  puts heroes_array[i].upcase

  i = i + 1
end


puts ""
puts ""
puts "DC Heroes WITH EACH:"

heroes_array.each do |x|
  puts x.upcase
  puts "Amount of characters: #{x.length}"
  puts "------"
end



# puts "BATMAN!!!"
# puts "GREEN LANTERN!!!"
# puts "SUPERMAN!!!"
