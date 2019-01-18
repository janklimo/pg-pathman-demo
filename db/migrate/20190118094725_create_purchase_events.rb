class CreatePurchaseEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :purchase_events do |t|
      t.belongs_to :purchase
      t.belongs_to :event
    end
  end
end
