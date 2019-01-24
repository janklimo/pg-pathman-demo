# frozen_string_literal: true

class Seller < ApplicationRecord
  has_many :products
  has_many :transactions

  PAYOUT_DELAY = 1.week

  # The following methods can utilize DB partitions by looking at transactions
  # since the last payout only.

  def balance_amount
    recent_payout = Payout.last

    if recent_payout
      transactions.where('created_at > ?', recent_payout.created_at)
        .sum(:total_cents)
    else
      # no payouts yet, sum all transactions
      transactions.sum(:total_cents)
    end
  end

  # We want to issue a payout for all transactions since the last payout,
  # excluding the last 7 days.
  # This way the payout rake task/scheduled job can be run anytime without
  # concerns about skipped or duplicate payouts.
  def payout_amount
    recent_payout = Payout.last

    if recent_payout
      # need to exclude lower bound (payout itself)
      # BETWEEN is inclusive
      transactions
        .where('created_at > ? AND created_at <= ?',
               recent_payout.created_at, PAYOUT_DELAY.ago)
        .sum(:total_cents)
    else
      transactions
        .where('created_at <= ?', PAYOUT_DELAY.ago)
        .sum(:total_cents)
    end
  end
end
