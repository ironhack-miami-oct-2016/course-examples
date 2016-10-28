require "sinatra"
require "sinatra/reloader"

require_relative("lib/task.rb")
require_relative("lib/todo_list.rb")


my_list = TodoList.new


get "/" do
  @tasks = my_list.tasks

  erb :list_of_tasks
end


get "/new_task" do
  erb :new_task
end

post "/create_task" do
  new_task = Task.new( params[:task_content] )

  my_list.add_task( new_task )

  redirect to("/")
end


get "/complete_task/:id" do
  the_task = my_list.find_task_by_id( params[:id].to_i )
  the_task.complete!

  redirect to("/")
end


post "/delete_task" do
  my_list.delete_task( params[:id].to_i )

  redirect to("/")
end
