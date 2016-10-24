# lib/pieces/knight.rb

class Knight < Piece
  def can_move?(final_x, final_y)
    change_x = (final_x - @x).abs
    change_y = (final_y - @y).abs

    if (change_x == 2 && change_y == 1) ||
       (change_x == 1 && change_y == 2)
      "yes"
    else
      "no"
    end
  end
end
