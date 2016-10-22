class Programmer
  include CaffeineConsumer
  include Payable

  def program
    puts "💻 Starting to program.💻"
    consume_caffeine
    do_wonderful_things_with_computers
    receive_salary
  end


  private

  def do_wonderful_things_with_computers
    puts "⌨ Tappity tap on the keyboard.⌨"
  end
end
