# lib/pieces/bishop.rb

class Bishop < Piece
  include DiagonalMovement

  def can_move?(final_x, final_y)
    change_x = (final_x - @x).abs
    change_y = (final_y - @y).abs

    if diagonal_move?(final_x, final_y) == "yes"
      "yes"
    else
      "no"
    end
  end
end
