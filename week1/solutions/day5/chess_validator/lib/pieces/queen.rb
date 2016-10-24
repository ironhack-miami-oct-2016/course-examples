# lib/pieces/queen.rb

class Queen < Piece
  include DiagonalMovement
  include StraightMovement

  def can_move?(final_x, final_y)
    if straight_move?(final_x, final_y) == "yes" ||
       diagonal_move?(final_x, final_y) == "yes"
      "yes"
    else
      "no"
    end
  end
end
