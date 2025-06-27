class CreateDiscounts < ActiveRecord::Migration[8.0]
  def change
    create_table :discounts do |t|
      t.string :code
      t.integer :percent
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
