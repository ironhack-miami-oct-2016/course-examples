# lib/movement/straight_movement.rb

module StraightMovement
  def straight_move?(final_x, final_y)
    if final_x == @x || final_y == @y
      "yes"
    else
      "no"
    end

    # Another option for the condition:
    # if (final_x - @x) == 0 || (final_y - @y) == 0
  end
end





