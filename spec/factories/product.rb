# frozen_string_literal: true

FactoryBot.define do
  factory :product do
    name { 'Sofa' }
    price_cents { 4_200 }
    association :seller
  end
end
