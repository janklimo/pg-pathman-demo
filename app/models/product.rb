# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :seller
  has_many :transactions
end
