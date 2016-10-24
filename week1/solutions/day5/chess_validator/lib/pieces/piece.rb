# lib/pieces/piece.rb

class Piece
  attr_accessor(:x, :y, :color)

  def initialize(x, y, color)
    @x = x
    @y = y
    @color = color
  end
end
