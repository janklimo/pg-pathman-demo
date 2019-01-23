# frozen_string_literal: true

describe Treasury do
  before do
    @seller = create(:seller)
    @product = create(:product, seller: @seller)
    @purchase = create(:purchase, product: @product, seller: @seller)
  end

  it 'issues payouts' do
    expect(Payout.count).to eq 0

    Treasury.issue_payout_for(@seller)

    expect(Payout.count).to eq 1
    payout = Payout.last

    expect(payout.total_cents).to eq(-10_000)
    expect(@seller.balance).to eq 0
  end

  it 'issues refunds' do
    expect(Refund.count).to eq 0

    Treasury.issue_refund_for(@purchase)

    expect(Refund.count).to eq 1
    refund = Refund.last

    expect(@purchase.reload.refund).to eq refund
    expect(refund.total_cents).to eq(-10_000)
    expect(@seller.balance).to eq 0
  end
end
