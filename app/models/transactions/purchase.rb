# frozen_string_literal: true

class Purchase < Transaction
  has_one :refund, class_name: 'Transaction', foreign_key: 'refund_id'
  belongs_to :product
end
