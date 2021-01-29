require 'csv'

products_csv = "data/files/products.csv"
CSV.foreach(products_csv, headers: true, header_converters: :symbol, skip_blanks: true) do |row|
  puts row[0]
end
