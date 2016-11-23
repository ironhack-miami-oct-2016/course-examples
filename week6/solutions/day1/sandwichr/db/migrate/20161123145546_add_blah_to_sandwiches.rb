class AddBlahToSandwiches < ActiveRecord::Migration[5.0]
  def change
    add_column :sandwiches, :total_calories, :integer, default: 0
  end
end
