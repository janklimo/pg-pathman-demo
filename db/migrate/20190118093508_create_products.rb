class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.integer :price_cents, null: false
      t.belongs_to :seller
      t.timestamps
    end

    add_foreign_key :products, :sellers
  end
end
