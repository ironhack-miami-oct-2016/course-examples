# app.rb

require_relative("lib/movement/straight_movement.rb")
require_relative("lib/movement/diagonal_movement.rb")

require_relative("lib/pieces/piece.rb")

require_relative("lib/pieces/rook.rb")
require_relative("lib/pieces/king.rb")
require_relative("lib/pieces/knight.rb")
require_relative("lib/pieces/bishop.rb")
require_relative("lib/pieces/queen.rb")
require_relative("lib/pieces/pawn.rb")

require_relative("lib/board.rb")



# /---------------------------------------------------------
#  ------------------------- ROOK --------------------------
#  ---------------------------------------------------------/

black_rook_left = Rook.new(1, 8, "black")
white_rook_right = Rook.new(8, 1, "white")


puts "Valid Rook movements"
puts "--------------------"

p black_rook_left.can_move?(1, 5) == "yes"
p black_rook_left.can_move?(5, 8) == "yes"
p white_rook_right.can_move?(8, 3) == "yes"
p white_rook_right.can_move?(2, 1) == "yes"


puts "Invalid Rook movements"
puts "----------------------"

p black_rook_left.can_move?(2, 7) == "no"
p black_rook_left.can_move?(2, 5) == "no"
p white_rook_right.can_move?(3, 5) == "no"
p white_rook_right.can_move?(5, 6) == "no"

puts ""



# /---------------------------------------------------------
#  ------------------------- KING --------------------------
#  ---------------------------------------------------------/

black_king = King.new(5, 8, "black")
white_king = King.new(5, 1, "white")


puts "Valid King movements"
puts "--------------------"

p black_king.can_move?(5, 7) == "yes"
p black_king.can_move?(6, 7) == "yes"
p white_king.can_move?(6, 2) == "yes"
p white_king.can_move?(5, 2) == "yes"
p white_king.can_move?(4, 1) == "yes"


puts "Invalid King movements"
puts "----------------------"

p black_king.can_move?(5, 4) == "no"
p black_king.can_move?(7, 5) == "no"
p white_king.can_move?(7, 2) == "no"
p white_king.can_move?(1, 5) == "no"
p white_king.can_move?(1, 1) == "no"

puts ""



# /---------------------------------------------------------
#  ------------------------ KNIGHT -------------------------
#  ---------------------------------------------------------/

black_knight_left = Knight.new(2, 8, "black")
white_knight_right = Knight.new(7, 1, "white")


puts "Valid Knight movements"
puts "----------------------"

p black_knight_left.can_move?(3, 6) == "yes"
p black_knight_left.can_move?(4, 7) == "yes"
p white_knight_right.can_move?(6, 3) == "yes"
p white_knight_right.can_move?(5, 2) == "yes"


puts "Invalid Knight movements"
puts "------------------------"

p white_knight_right.can_move?(7, 4) == "no"
p white_knight_right.can_move?(3, 5) == "no"
p white_knight_right.can_move?(8, 4) == "no"

puts ""



# /---------------------------------------------------------
#  ------------------------- BOARD -------------------------
#  ---------------------------------------------------------/

# Remaining pieces
black_rook_right = Rook.new(8, 8, "black")

# Empty board
my_board = Board.new

# Add black pieces to the board
my_board.add_piece(black_rook_left)
my_board.add_piece(black_knight_left)
my_board.add_piece(black_king)
my_board.add_piece(black_rook_right)

# Add white pieces to the board
my_board.add_piece(white_king)
my_board.add_piece(white_knight_right)
my_board.add_piece(white_rook_right)


puts "Valid Board movements"
puts "---------------------"

  #                        x  y  final_x
  #                        |  |   |
p my_board.board_can_move?(7, 1,  6, 3) == "yes"
  #                                  |
  #                                  final_y

p my_board.board_can_move?(5, 8,  5, 7) == "yes"
p my_board.board_can_move?(8, 8,  4, 8) == "yes"


puts "Invalid Board movements"
puts "-----------------------"

p my_board.board_can_move?(57, 57,  7, 8) == "no"
p my_board.board_can_move?(8, 8,  100, 100) == "no"
p my_board.board_can_move?(5, 5,  8, 8) == "no"
p my_board.board_can_move?(5, 8,  5, 8) == "no"
