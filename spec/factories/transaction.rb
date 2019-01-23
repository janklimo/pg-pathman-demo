# frozen_string_literal: true

FactoryBot.define do
  factory :transaction do
    association :product

    factory :purchase do
      type { 'Purchase' }
      total_cents { 10_000 }
    end

    factory :refund do
      type { 'Refund' }
      total_cents { -10_000 }
    end
  end
end
