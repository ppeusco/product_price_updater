require_relative "tools"
module Coverages
  class SuperSale < Product
    include Tools

    def update_price
      decrease_price(2)
      decrease_sell_in
      decrease_price(2) if @sell_in.negative?
    end
  end
end