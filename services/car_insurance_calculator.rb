# frozen_string_literal: true

# Receive an array of products with an initial state
# then iterate over it n times, and display the results of each iteration.
class CarInsuranceCalculator < ApplicationService
  def initialize(products, days)
    super()
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
