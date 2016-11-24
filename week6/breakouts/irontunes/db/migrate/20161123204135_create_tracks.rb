class CreateTracks < ActiveRecord::Migration[5.0]
  def change
    create_table :tracks do |t|
      t.string :artist
      t.string :genre
      t.string :name
      t.string :album
      t.text :picture

      t.timestamps
    end
  end
end
