# spec/super_sale_spec.rb
require './product'
require "./coverages/super_sale"

describe Coverages::SuperSale do 
  describe ".update_price" do
    before :each do
      @super_sale_coverage = Coverages::SuperSale.new("Super Sale", 10, 20)
      @super_sale_coverage.update_price
    end

    context "sell_in is positive" do
      it "decrease price by 2" do
        expect(@super_sale_coverage.price).to eq(18)
      end

      it "decrease sell_in by 1" do
        expect(@super_sale_coverage.sell_in).to eq(9)
      end
    end

    context "sell_in is negative" do
      it "decrease price by 2" do
        @other_super_sale_coverage = Coverages::SuperSale.new("Super Sale", -10, 20)
        @other_super_sale_coverage.update_price
        expect(@other_super_sale_coverage.price).to eq(16)
        expect(@other_super_sale_coverage.sell_in).to eq(-11)
      end
    end

    context "The price can never be less than zero" do
      it "It does not increase the price any more when it reaches 50" do
        50.times { @super_sale_coverage.update_price }
        expect(@super_sale_coverage.price).to eq(0)
        expect(@super_sale_coverage.sell_in).to eq(-41)
      end
    end
  end
end
