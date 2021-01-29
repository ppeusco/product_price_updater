require 'byebug'
require "./services/products_parser"

products_csv = "data/files/products.csv"
products = ProductsParser.call(products_csv)
