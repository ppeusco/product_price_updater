# frozen_string_literal: true

# Class representing a Product object
class Product
  attr_reader :name, :sell_in, :price

  def initialize(name, sell_in, price)
    @name = name
    @sell_in = sell_in
    @price = price
  end
end
