# frozen_string_literal: true

describe Seller do
  before do
    @seller = create(:seller)
    @product = create(:product, seller: @seller)
    @purchase = create(:purchase, product: @product, seller: @seller)
    @purchase2 = create(:purchase, product: @product, seller: @seller)
    @refund = create(:refund, seller: @seller)
  end

  it 'returns balance' do
    expect(@seller.balance).to eq 10_000
  end
end
