# lib/car.rb


class Car
  def initialize(one, two, three)
    @make = one
    @model = two
    @sound = three
  end

  def rev_engine
    puts "#{@make} #{@model} goes:"
    puts @sound
  end
end
