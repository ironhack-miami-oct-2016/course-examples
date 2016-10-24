# lib/movement/diagonal_movement.rb

module DiagonalMovement
  def diagonal_move?(final_x, final_y)
    change_x = (final_x - @x).abs
    change_y = (final_y - @y).abs

    if change_x == change_y
      "yes"
    else
      "no"
    end
  end
end
