require 'byebug'
require "./services/products_parser"
require "./services/products_printer"
require "./services/car_insurance_calculator"

products_csv = "data/files/products.csv"
products = ProductsParser.call(products_csv)
CarInsuranceCalculator.call(products, 30)
