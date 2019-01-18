class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.integer :total_cents, null: false
      t.belongs_to :product
      t.timestamps
    end
  end
end
