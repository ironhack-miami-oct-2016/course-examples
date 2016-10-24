# lib/pieces/bishop.rb

class Bishop < Piece
  include DiagonalMovement

  def can_move?(final_x, final_y)
    if diagonal_move?(final_x, final_y) == "yes"
      "yes"
    else
      "no"
    end
  end
end
