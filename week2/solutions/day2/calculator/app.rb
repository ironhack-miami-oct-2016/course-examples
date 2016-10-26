require "sinatra"

require_relative "lib/calculator.rb"
require_relative "lib/memory_saver.rb"


my_calculator = Calculator.new
my_memory = MemorySaver.new


get "/" do
  @memory_number = my_memory.load

  erb :home
end


# <form method="post" action="/calculate">
#                |                 |
# ----------------                 |
# |        -------------------------
# |        |
post "/calculate" do
    # <input type="number" name="first_number">
    #                                 |
    #                  ----------------
    #                  |
  first = params[:first_number].to_i

    # <input type="number" name="second_number">
    #                                  |
    #                    ---------------
    #                    |
  second = params[:second_number].to_i

    # <button type="submit" name="operation" value="add">
    #                                 |              |
    #            ----------------------              |
    #            |           -------------------------
    #            |           |
  if params[:operation] == "add"
    @result = my_calculator.add(first, second)

  elsif params[:operation] == "subtract"
    @result = my_calculator.subtract(first, second)

  elsif params[:operation] == "multiply"
    @result = my_calculator.multiply(first, second)

  elsif params[:operation] == "divide"
    @result = my_calculator.divide(first, second)
  end

  erb :results
end


# <form method="post" action="/save_to_memory">

post "/save_to_memory" do
    # <input type="hidden" name="result" value="<%= @result %>">
    #                               |
    #                       ---------
    #                       |
  my_memory.save(params[:result])

  redirect to("/")
end
