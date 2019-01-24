# frozen_string_literal: true

describe Seller do
  before do
    @seller = create(:seller)
    @product = create(:product, seller: @seller)
    @purchase = create(:purchase, product: @product, seller: @seller,
                       created_at: 12.days.ago)
    @purchase2 = create(:purchase, product: @product, seller: @seller,
                        created_at: 8.days.ago)
    @refund = create(:refund, seller: @seller, total_cents: 400,
                     created_at: 8.days.ago)
  end

  describe '#balance_amount' do
    it 'returns balance' do
      expect(@seller.balance_amount).to eq 19_600
    end

    context 'when a payout is found' do
      before do
        # won't be accounted for
        create(:purchase, product: @product, seller: @seller,
               created_at: 3.weeks.ago)
        @payout = create(:payout, seller: @seller, total_cents: 500,
                         created_at: 10.days.ago)
      end

      it 'returns balance since last payout' do
        expect(@seller.balance_amount).to eq 9_600
      end
    end
  end

  describe '#payout_amount' do
    before do
      @purchase.update(created_at: 3.weeks.ago)
    end

    it 'returns payout amount' do
      # all transactions older than 7 days
      expect(@seller.payout_amount).to eq 19_600
    end

    context 'when a payout exists' do
      before do
        # won't be accounted for
        create(:purchase, product: @product, seller: @seller,
               created_at: 3.weeks.ago)
        create(:payout, seller: @seller, total_cents: 500,
               created_at: 2.weeks.ago)
      end

      it 'returns balance since last payout' do
        expect(@seller.payout_amount).to eq 9_600
      end
    end
  end
end
