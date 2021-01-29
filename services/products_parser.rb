require "csv"
require "./services/application_service"
require "./product"

class ProductsParser < ApplicationService
    
  def initialize(file_name)
    @file_name = file_name
    @products = []
  end
  
  def call
    CSV.foreach(@file_name, headers: true, header_converters: :symbol, skip_blanks: true) do |row|
      row = row.to_hash
      @products << Product.new(row[:name].strip, row[:sell_in].strip, row[:price].strip)
    end
    @products
  end
end
