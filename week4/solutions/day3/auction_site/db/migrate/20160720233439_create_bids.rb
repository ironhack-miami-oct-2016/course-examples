class CreateBids < ActiveRecord::Migration[5.0]
  def change
    create_table :bids do |t|
      t.decimal :amount
      t.string :user_email
      t.belongs_to :user, foreign_key: true
      t.belongs_to :product, foreign_key: true

      t.timestamps
    end
  end
end
