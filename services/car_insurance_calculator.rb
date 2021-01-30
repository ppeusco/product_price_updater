class CarInsuranceCalculator < ApplicationService
  def initialize(products, days)
    @products = products
    @days = days
  end

  def call
    (@days + 1).times do |i|
      ProductsPrinter.call(@products, i)
      @products.each(&:update_price)
    end
  end
end
