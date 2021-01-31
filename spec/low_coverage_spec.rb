# spec/low_coverage_spec.rb
require './product'
require "./coverages/low_coverage"

describe Coverages::LowCoverage do 
  describe ".update_price" do
    before :each do
      @low_coverage = Coverages::LowCoverage.new("Low Coverage", 10, 20)
      @low_coverage.update_price
    end

    context "sell_in is positive" do
      it "decrease price by 1" do
        expect(@low_coverage.price).to eq(19)
      end

      it "decrease sell_in by 1" do
        expect(@low_coverage.sell_in).to eq(9)
      end
    end

    context "sell_in is negative" do
      it "decrease price by 2" do
        @other_low_coverage = Coverages::LowCoverage.new("Low Coverage", -10, 20)
        @other_low_coverage.update_price
        expect(@other_low_coverage.price).to eq(18)
        expect(@other_low_coverage.sell_in).to eq(-11)
      end
    end
    
    context "The price can never be less than zero" do
      it "It does not increase the price any more when it reaches 50" do
        50.times { @low_coverage.update_price }
        expect(@low_coverage.price).to eq(0)
        expect(@low_coverage.sell_in).to eq(-41)
      end
    end
  end
end
