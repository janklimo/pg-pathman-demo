# frozen_string_literal: true

class Transaction < ApplicationRecord
  belongs_to :product, optional: true
  belongs_to :seller
  belongs_to :refund, optional: true
end
