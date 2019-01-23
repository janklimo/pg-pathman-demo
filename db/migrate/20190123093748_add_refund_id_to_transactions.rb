class AddRefundIdToTransactions < ActiveRecord::Migration[5.2]
  def change
    change_table :transactions do |t|
      t.bigint :refund_id, index: true
    end
  end
end
