# lib/pieces/pawn.rb

class Pawn < Piece
  def initialize(x, y, color, is_first = true)
    @x = x
    @y = y
    @color = color
    @is_first = is_first
  end

  def can_move?(final_x, final_y)
    @change_x = (final_x - @x).abs
    @change_y = final_y - @y

    if @change_x == 0 &&
       direction_correct? == "yes" &&
       amount_of_spaces_correct? == "yes"
      "yes"
    else
      "no"
    end
  end


  private

  def direction_correct?
    if @color == "white" && @change_y > 0
      "yes"
    elsif @color == "black" && @change_y < 0
      "yes"
    else
      "no"
    end
  end

  def amount_of_spaces_correct?
    if @change_y.abs == 1
      "yes"
    elsif @is_first && @change_y.abs == 2
      "yes"
    else
      "no"
    end
  end
end
