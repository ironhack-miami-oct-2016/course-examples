# name
# superpowers
# real_name
# city
# comics_company
# nemesis


#                0                        1                             2             3         4          5
#                       -----------------------------------------
superman = ["Superman", ["flight", "superstrength", "superspeed"], "Clark Kent", "Metropolis", "DC", "Lex Luthor"]

# superman[4]

puts "Real Name: #{superman[2]}"
puts "Super Hero Name: #{superman[0]}"
puts "Company: #{superman[4]}"




superman = {
  :name => "Superman",
  :superpowers => ["flight", "superstrength", "superspeed"],
  :real_name => "Clark Kent",
  :city => "Metropolis",
  :comics_company => "DC",
  :nemesis => "Lex Luthor"
}

# superman[:comics_company]

puts "Real Name: #{superman[:real_name]}"
puts "Super Hero Name: #{superman[:name]}"
puts "Company: #{superman[:comics_company]}"
