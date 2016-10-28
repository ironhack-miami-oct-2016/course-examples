# lib/todo_list.rb

class TodoList
    attr_reader :tasks

    def initialize
      @tasks = []
    end

    def add_task(new_task)
      @tasks.push(new_task)
    end

    def delete_task(task_id)
      @tasks.delete_if { |the_task| the_task.id == task_id }
    end

    def find_task_by_id(task_id)
      @tasks.find { |the_task| the_task.id == task_id }
    end
end
