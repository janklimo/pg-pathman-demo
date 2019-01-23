# frozen_string_literal: true

class Seller < ApplicationRecord
  has_many :products
  has_many :transactions

  def balance
    transactions.sum(:total_cents)
  end
end
