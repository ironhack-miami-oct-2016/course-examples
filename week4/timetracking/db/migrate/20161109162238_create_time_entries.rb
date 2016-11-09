class CreateTimeEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :time_entries do |t|
      t.integer :project_id
      t.integer :hours
      t.integer :minutes
      t.text :comments
      t.datetime :date

      t.timestamps
    end
  end
end
