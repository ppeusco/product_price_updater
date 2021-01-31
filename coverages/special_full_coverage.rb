# frozen_string_literal: true

require_relative 'tools'
module Coverages
  # Class representing a Special Full Coverage object
  class SpecialFullCoverage < Product
    include Tools

    def update_price
      increase_price(1)
      increase_price(1) if @sell_in < 11
      increase_price(1) if @sell_in < 6
      decrease_sell_in
      decrease_price(@price) if @sell_in.negative?
    end
  end
end
