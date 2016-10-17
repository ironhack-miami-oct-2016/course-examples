heroes_array = ["Batman", "Green Lantern", "Superman", "The Flash", "Cyborg", "Wonder Woman", "Aquaman"]

total_lengths = 0

heroes_array.each do |x|
  total_lengths += x.length
end

# puts total_lengths.to_f / heroes_array.length


# ------------------------------------------------

total_lengths = heroes_array.reduce(0) do |sum, x|
  puts "Sum: #{sum}"
  puts "X: #{x}"
  puts "X length: #{x.length}"
  puts "Result This Round: #{sum + x.length}"
  puts "-----------------------------"

  gets.chomp

  sum + x.length
end

puts ""
puts "FINAL RESULT: #{total_lengths}"
puts "AVERAGE: #{total_lengths.to_f / heroes_array.length}"
