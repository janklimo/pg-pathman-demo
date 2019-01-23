# frozen_string_literal: true

class Purchase < Transaction
  belongs_to :product
end
