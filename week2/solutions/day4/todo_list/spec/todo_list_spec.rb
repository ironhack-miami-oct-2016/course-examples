# spec/todo_list_spec.rb

require_relative("../lib/todo_list.rb")
require_relative("../lib/task.rb")


RSpec.describe TodoList do
  let(:task1) { Task.new("Activate SunPass") }
  let(:task2) { Task.new("Vacuum 2nd floor") }
  let(:task3) { Task.new("Go to the gym") }
  let(:empty_list) { TodoList.new }
  let(:list) do
    list = TodoList.new

    list.add_task(task1)
    list.add_task(task2)
    list.add_task(task3)

    # Don't forget to return the value!
    list
  end

  describe "#add_task" do
    it "adds tasks to the list" do
      expect( empty_list.tasks.length ).to eq(0)

      empty_list.add_task(task1)

      expect( empty_list.tasks.length ).to eq(1)
      expect( empty_list.tasks ).to include(task1)
    end
  end

  describe "#delete_task" do
    it "deletes task with given id" do

      list.delete_task(task2.id)

      expect( list.tasks ).not_to include(task2)
    end
  end

  describe "#find_task_by_id" do
    it "returns the task for the correct id" do
      expect( list.find_task_by_id(task1.id) ).to eq(task1)
    end

    it "returns nil for incorrect id" do
      expect( list.find_task_by_id(9999) ).to be_nil
    end
  end
end
