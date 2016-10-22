class Designer
  include CaffeineConsumer
  include Payable

  def design_things
    puts "🖌 Starting to design.🖌"
    consume_caffeine
    select_typography
    select_colors
    receive_salary
  end

  
  private
  
  def select_typography
    puts "🔤 Selecting an artful typography.🔤"
  end

  def select_colors
    puts "🎨 Selecting vibrant colors.🎨"
  end
end

