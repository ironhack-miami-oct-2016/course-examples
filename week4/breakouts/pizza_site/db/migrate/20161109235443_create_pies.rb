class CreatePies < ActiveRecord::Migration[5.0]
  def change
    create_table :pies do |t|
      t.string :flavor
      t.decimal :price
      t.string :size

      t.timestamps
    end
  end
end
