# lib/pieces/queen.rb

class Queen < Piece
  include DiagonalMovement
  include StraightMovement

  def can_move?(final_x, final_y)
    change_x = (final_x - @x).abs
    change_y = (final_y - @y).abs

    if straight_move?(final_x, final_y) == "yes" ||
       diagonal_move?(final_x, final_y) == "yes"
      "yes"
    else
      "no"
    end
  end
end
