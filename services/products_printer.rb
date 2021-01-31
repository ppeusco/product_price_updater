# frozen_string_literal: true

require './services/application_service'
require './product'

# Print the products (name price and sell_in) of the Car Insurance Calculator
class ProductsPrinter < ApplicationService
  def initialize(products, days)
    super()
    @products = products
    @days = days
  end

  def call
    puts "---------- day #{@days}----------"
    puts 'name sell_in price'

    @products.each do |p|
      puts "#{p.name}, #{p.sell_in}, #{p.price}"
    end
  end
end
