class AddSellerReferenceToTransactions < ActiveRecord::Migration[5.2]
  def change
    add_reference :transactions, :seller, index: true
    add_foreign_key :transactions, :sellers
  end
end
