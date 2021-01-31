# frozen_string_literal: true

# We create this class to make the creation of service objects more sugary
# For example ProductsParser.call (products_csv) instead of ProductsParser.new.instance_method
class ApplicationService
  def self.call(*args, **kwargs, &block)
    new(*args, **kwargs, &block).call
  end
end
