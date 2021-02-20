# frozen_string_literal: true

require_relative 'tools'
module Coverages
  # Class representing a Low Coverage object
  class LowCoverage < Product
    include Tools

    def update_price
      decrease_price(1)
      decrease_sell_in
      decrease_price(1) if sell_in.negative?
    end
  end
end
