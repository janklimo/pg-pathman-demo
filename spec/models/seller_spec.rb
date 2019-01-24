# frozen_string_literal: true

describe Seller do
  before do
    @seller = create(:seller)
    @product = create(:product, seller: @seller)
    @purchase = create(:purchase, product: @product, seller: @seller)
    @purchase2 = create(:purchase, product: @product, seller: @seller)
    @refund = create(:refund, seller: @seller, total_cents: 400)
  end

  describe '#balance' do
    it 'returns balance with either approach' do
      expect(@seller.balance).to eq 19_600
      expect(@seller.balance_advanced).to eq 19_600
    end

    context 'when a payout is found' do
      before do
        # won't be accounted for
        create(:purchase, product: @product, seller: @seller, 
               created_at: 3.weeks.ago)
        @payout = create(:payout, seller: @seller, total_cents: 500,
                         created_at: 1.week.ago)
      end

      it 'returns balance since last payout' do
        expect(@seller.balance_advanced).to eq 19_600
      end
    end
  end
end
