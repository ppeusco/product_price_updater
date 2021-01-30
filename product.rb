class Product

  attr_reader :name, :sell_in, :price

  def initialize(name, sell_in, price)
    @name = name
    @sell_in = sell_in
    @price = price
  end
  
  def increase_price(value)
    return if @price == 50

    @price += value if (@price + value) <= 50
  end
  
  def decrease_price(value)
    return if @price.zero?

    @price -= value if (@price - value) >= 0
  end
  
  def decrease_sell_in
    @sell_in -= 1
  end
end
