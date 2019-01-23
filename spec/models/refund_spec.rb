# frozen_string_literal: true

describe Refund do
  before do
    @seller = create(:seller)
  end

  it 'makes sure total is negative' do
    refund = Refund.create(seller: @seller, total_cents: 300)
    expect(refund.total_cents).to eq(-300)

    refund.update(total_cents: -600)
    expect(refund.total_cents).to eq(-600)
  end
end
