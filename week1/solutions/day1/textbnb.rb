# /---------------------------------------------------------
#  ------------------------- SETUP -------------------------
#  ---------------------------------------------------------/

class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

# ----------

def print_homes( homes_array )
  homes_array.each do |the_home|
    puts "#{the_home.name} in #{the_home.city}"
    puts "Price: $#{the_home.price} a night"
    puts "Capacity: #{the_home.capacity} guests"
    puts ""
  end

  total_prices = homes_array.reduce(0.0) do |accumulator, the_home|
    accumulator + the_home.price
  end

  # Calculate the average based on the amount of prices in the array
  the_average = total_prices / homes_array.length

  puts "Average price per night: $#{the_average}"
end

# ----------

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]



# /---------------------------------------------------------
#  ------------------- APPLICATION CODE --------------------
#  ---------------------------------------------------------/

puts ""
puts "Welcome to Textbnb."
puts "==================="
puts ""
puts "Book homes from local hosts in 2+ countries."

user_input = nil

while user_input != "exit"
  puts ""
  puts "Enter [help] to see available commands or [exit] to exit."
  puts "What is your selection?"
  user_input = gets.chomp

  puts ""

  if user_input == "help"
    puts "Available commands:"
    puts "- [list] or [lowest] to see the list of homes (lowest price first)"
    puts "- [highest] to see highest price first"
    puts "- [capacity] to see highest capacity first"
    puts "- [city] to filter by city"
    puts "- [name] to name your own price"

  elsif user_input == "exit"
    puts "Goodbye."

  elsif user_input == "list" || user_input == "lowest"
    lowest_first = homes.sort { |home_a, home_b| home_a.price <=> home_b.price }
      #   |
      #   --------------
      #                |
      #                v
    print_homes( lowest_first )

  elsif user_input == "highest"
    highest_first = homes.sort { |home_a, home_b| home_b.price <=> home_a.price }
      #    |
      #    --------------
      #                 |
      #                 v
    print_homes( highest_first )

  elsif user_input == "capacity"
    by_capacity = homes.sort { |home_a, home_b| home_b.capacity <=> home_a.capacity }
      #  |
      #  --------------
      #               |
      #               v
    print_homes( by_capacity )

  elsif user_input == "city"
    puts "Enter the name of a city:"
    user_city = gets.chomp.downcase

    puts ""

    city_homes = homes.select { |the_home| the_home.city.downcase == user_city }
      # |
      # --------------
      #              |
      #              v
    print_homes( city_homes )

  elsif user_input == "name"
    puts "Enter your desired price:"
    user_price = gets.chomp.to_f

    puts ""

    matched_home = homes.find { |the_home| the_home.price == user_price }

    if matched_home == nil
      puts "No homes available for $#{user_price} a night."
    else
      # Make an array of one so we can reuse the existing method
      matches = [matched_home]

      print_homes( matches )
    end

  else
    puts "No understand. Beep boop."
  end
end
