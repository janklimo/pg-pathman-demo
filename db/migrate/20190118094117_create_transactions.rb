class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.string :type, null: false
      t.integer :total_cents, null: false
      t.belongs_to :product
      t.timestamps
    end

    add_foreign_key :transactions, :products
  end
end
