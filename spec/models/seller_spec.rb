# frozen_string_literal: true

describe Seller do
  before do
    @seller = create(:seller)
    @product = create(:product, seller: @seller)
    @purchase = create(:purchase, product: @product, seller: @seller)
    @purchase2 = create(:purchase, product: @product, seller: @seller)
    @refund = create(:refund, seller: @seller, total_cents: 400)
  end

  it 'returns balance' do
    expect(@seller.balance).to eq 19_600
  end
end
