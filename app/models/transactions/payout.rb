# frozen_string_literal: true

class Payout < Transaction
  before_save :make_total_negative

  private

  def make_total_negative
    self.total_cents = -total_cents unless total_cents < 0
  end
end
