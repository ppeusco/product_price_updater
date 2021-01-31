# frozen_string_literal: true

require_relative 'tools'
module Coverages
  # Class representing a Super Sale object
  class SuperSale < Product
    include Tools

    def update_price
      decrease_price(2)
      decrease_sell_in
      decrease_price(2) if @sell_in.negative?
    end
  end
end
