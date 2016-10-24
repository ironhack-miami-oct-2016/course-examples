# lib/pieces/king.rb

class King < Piece
  def can_move?(final_x, final_y)
    change_x = (final_x - @x).abs
    change_y = (final_y - @y).abs

    if (change_x == 0 || change_x == 1) &&
       (change_y == 0 || change_y == 1)
      "yes"
    else
      "no"
    end
  end
end
