# lib/game.rb

class Game
  def initialize
    @rooms = []
    @current_position = 0
  end

  def add_room(room)
    @rooms.push(room)
  end

  def start
    puts @rooms[0].description
  end

  def move(direction)
    correct_exit = @rooms[@current_position].exit

    puts ""

    if direction == correct_exit
      @current_position += 1
    else
      puts "You get hit in the face because you went the wrong direction."
    end

    if @current_position == @rooms.length
      puts "You die painfully."
    else
      puts @rooms[@current_position].description
    end
  end

  def ended?
    @current_position == @rooms.length
  end
end
