require "./services/application_service"
require "./product"

class ProductsPrinter < ApplicationService
    
  def initialize(products, days)
    @products = products
    @days = days
  end
  
  def call
    @days.times do |i|
      puts "---------- day #{i}----------"
      puts "name sell_in price"
      
      @products.each do |p|  
        puts "#{p.name}, #{p.sell_in}, #{p.price}"
      end
    end
  end
end
