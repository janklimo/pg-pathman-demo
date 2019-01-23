# frozen_string_literal: true

module Treasury
  def self.issue_payout_for(seller)
    amount = seller.balance
    Payout.create(total_cents: amount, seller: seller)
  end

  def self.issue_refund_for(transaction)
    seller = transaction.seller
    amount = transaction.total_cents

    Refund.transaction do
      refund = Refund.create(total_cents: amount, seller: seller)
      transaction.update(refund: refund)
    end
  end
end
