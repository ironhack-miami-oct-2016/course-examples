class CreatePizzas < ActiveRecord::Migration[5.0]
  def change
    create_table :pizzas do |t|
      t.decimal :price
      t.string :size
      t.integer :order_id

      t.timestamps
    end
  end
end
