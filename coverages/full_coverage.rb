# frozen_string_literal: true

require_relative 'tools'
module Coverages
  # Class representing a Full Coverage object
  class FullCoverage < Product
    include Tools

    def update_price
      increase_price(1)
      decrease_sell_in
      increase_price(1) if @sell_in.negative?
    end
  end
end
