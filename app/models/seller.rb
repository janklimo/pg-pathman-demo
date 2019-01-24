# frozen_string_literal: true

class Seller < ApplicationRecord
  has_many :products
  has_many :transactions

  PERIOD = 2.weeks

  # sum of all transactions
  def balance_simple
    transactions.sum(:total_cents)
  end
  alias_method :balance, :balance_simple

  # here we can utilize DB partitions by looking at transactions since
  # the last payout only
  def balance_advanced
    recent_payout = Payout.where('created_at > ?', (PERIOD + 1.day).ago).last

    if recent_payout
      transactions.where('created_at > ?', recent_payout.created_at)
        .sum(:total_cents)
    else
      # no payouts yet, sum all transactions
      transactions.where('created_at > ?', PERIOD.ago).sum(:total_cents)
    end
  end
end
