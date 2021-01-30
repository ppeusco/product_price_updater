require "csv"
require "./services/application_service"
require "./product"
require "./coverages/full_coverage"
require "./coverages/low_coverage"
require "./coverages/medium_coverage"
require "./coverages/mega_coverage"
require "./coverages/special_full_coverage"
require "./coverages/super_sale"

class ProductsParser < ApplicationService
  def initialize(file_name)
    @file_name = file_name
    @products = []
  end
  
  def call
    CSV.foreach(@file_name, headers: true, header_converters: :symbol, skip_blanks: true) do |row|
      row = row.to_hash
      klass_name = row[:name].gsub(/\s+/, "")

      @products << Coverages.const_get(klass_name).new(
        row[:name].strip,
        row[:sell_in].strip.to_i,
        row[:price].strip.to_i
      )
    end
    @products
  end
end
