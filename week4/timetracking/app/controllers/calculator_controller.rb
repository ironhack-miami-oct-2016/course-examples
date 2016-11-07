class CalculatorController < ApplicationController
  def add_form
    render "add_form"
  end


  def process_addition
    @a = params[:first_num].to_i
    @b = params[:second_num].to_i
    @result = @a + @b

    render "results"
  end
end
