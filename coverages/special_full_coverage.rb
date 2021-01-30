module Coverages
  class SpecialFullCoverages < Product

    def update_price
      super

      @price += 1
      @price += 1 if @sell_in < 11 && @price < 50
      @price += 1 if @sell_in < 6  && @price < 50
      @sell_in -= 1
      @price += @price if @sell_in.negative?
    end
  end
end
