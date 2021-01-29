require 'byebug'
require "./services/products_parser"
require "./services/products_printer"

products_csv = "data/files/products.csv"
products = ProductsParser.call(products_csv)
ProductsPrinter.call(products, 10)
