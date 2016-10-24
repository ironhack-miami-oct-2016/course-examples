# lib/pieces/rook.rb

class Rook < Piece
  include StraightMovement

  def can_move?(final_x, final_y)
    if straight_move?(final_x, final_y) == "yes"
      "yes"
    else
      "no"
    end
  end
end
