require_relative "tools"
module Coverages
  class FullCoverage < Product
    include Tools

    def update_price
      increase_price(1)
      decrease_sell_in
      increase_price(1) if @sell_in.negative?
    end  
  end
end
