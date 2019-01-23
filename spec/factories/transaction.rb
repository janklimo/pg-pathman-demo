# frozen_string_literal: true

FactoryBot.define do
  factory :transaction do
    association :product
    total_cents { 10_000 }

    factory :purchase, class: 'Purchase'
    factory :refund, class: 'Refund'
  end
end
