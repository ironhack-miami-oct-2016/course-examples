# app.rb

require_relative("lib/room.rb")
require_relative("lib/game.rb")

room1 = Room.new("N", "You wake up in a dark room. You can't see anything, but there is a breeze from the North.")
room2 = Room.new("W", "You still can't see very well, but apparently you are in a dungeon. You can see a dim light to the west.")
room3 = Room.new("S", "You are in a hallway. There's a door to the south.")
room4 = Room.new("W", "You are in a court yard. There's blood everywhere but there seams to be a gate to the west.")
room5 = Room.new("N", "You escape the dungeon but you see hole with bright light to the North.")

game = Game.new
game.add_room(room1)
game.add_room(room2)
game.add_room(room3)
game.add_room(room4)
game.add_room(room5)

game.start

input = nil

while input != "exit"
  puts ""
  puts "Which direction would you like to go in?"
  input = gets.chomp

  game.move(input)

  if game.ended?
    break
  end
end
