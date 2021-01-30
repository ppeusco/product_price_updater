module Coverages
  class MediumCoverage < Product
    
    def update_price
      decrease_price(1)
      decrease_sell_in
      decrease_price(1) if @sell_in.negative? 
    end
  end
end
