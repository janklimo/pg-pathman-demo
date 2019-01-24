# frozen_string_literal: true

namespace :treasury do
  desc 'Issue payouts for all sellers'
  task issue_payouts: :environment do
    Seller.all.find_each do |seller|
      Treasury.issue_payout_for(seller)
    end
  end
end
