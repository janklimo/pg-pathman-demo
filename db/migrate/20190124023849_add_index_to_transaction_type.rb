class AddIndexToTransactionType < ActiveRecord::Migration[5.2]
  def change
    add_index :transactions, [:type, :created_at]
  end
end
