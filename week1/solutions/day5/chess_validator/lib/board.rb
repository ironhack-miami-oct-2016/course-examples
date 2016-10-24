# lib/board.rb

class Board
  def initialize
    # Each smaller array is a column on the board
    #                 1    2    3    4    5    6    7    8
    @pieces = [ nil, [ ], [ ], [ ], [ ], [ ], [ ], [ ], [ ] ]
    #            ^
    #            |
    # The first can be anything because we aren't going to use it
  end

  def add_piece(the_piece)
    # @pieces[8][8] = black_rook_right

    x = the_piece.x
    y = the_piece.y
    @pieces[x][y] = the_piece
  end

  def board_can_move?(x, y, final_x, final_y)
    # Coordinates off the grid
    if x > @pieces.length || y > @pieces.length ||
       final_x > @pieces.length || final_y > @pieces.length
      "no"
    else
      the_piece = @pieces[x][y]

      # No piece in that space
      if the_piece == nil
        "no"

      # Not moving
      elsif x == final_x && y == final_y
        "no"

      # Otherwise let the piece decide if it's valid
      else
        the_piece.can_move?(final_x, final_y)
      end
    end
  end
end
