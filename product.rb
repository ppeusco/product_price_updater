class Product

  attr_reader :name, :sell_in, :price

  def initialize(name, sell_in, price)
    @name = name
    @sell_in = sell_in
    @price = price
  end
  
  def update_price(_day)
    return if @price.zero?
    return if @price == 50
    
  end
end
