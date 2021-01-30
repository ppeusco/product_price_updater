module Coverages
  class FullCoverages < Product

    def update_price
      super
      return if @price >= 50

      @price += 1
      @sell_in -= 1
      
      @price += 1 if @sell_in.negative?
  end
end
