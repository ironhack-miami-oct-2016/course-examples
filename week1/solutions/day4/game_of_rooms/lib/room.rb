# lib/room.rb

class Room
  attr_accessor(:exit, :description)

  def initialize(exit, description)
    @exit = exit
    @description = description
  end
end
