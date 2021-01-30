module Coverages
  class SuperCoverages < Product

    def update_price(_day)
      super
      @price -= 2
      @sell_in -= 1
      @price -= 2 if @sell_in.negative? && @price.positive?
    end
  end
end
