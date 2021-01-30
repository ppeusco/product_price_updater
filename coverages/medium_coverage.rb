module Coverages
  class MediumCoverages < Product
    
    def update_price
      super
      @price -= 1
      @sell_in -= 1
      @price -= 1 if @sell_in.negative? && @price.positive?
    end
  end
end
