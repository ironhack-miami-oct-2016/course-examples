# spec/task_spec.rb

require_relative("../lib/task.rb")


RSpec.describe Task do

  describe "complete?" do
    it "returns false for new tasks" do
      task = Task.new("Buy router")

      expect( task.complete? ).to eq(false)
    end
  end

  describe "complete!" do
    it "sets @is_complete to true" do
      task = Task.new("Buy router")

      task.complete!

      expect( task.complete? ).to eq(true)
    end
  end

  describe "make_incomplete!" do
    it "sets @is_complete to false" do
      task = Task.new("Buy router")

      task.complete!
      task.make_incomplete!

      expect( task.complete? ).to eq(false)
    end
  end

  describe "update_content!" do
    it "changes the text of a task" do
      task = Task.new("Buy rooster")

      task.update_content!("Buy router")

      expect( task.content ).to eq("Buy router")
    end
  end
end
