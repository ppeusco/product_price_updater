# spec/full_coverage_spec.rb
require './product'
require "./coverages/full_coverage"

describe Coverages::FullCoverage do 
  describe ".update_price" do
    before :each do
      @full_coverage = Coverages::FullCoverage.new("Full Coverage", 10, 20)
      @full_coverage.update_price
    end

    context "sell_in is positive" do
      it "increase price by 1" do
        expect(@full_coverage.price).to eq(21)
      end

      it "decrease sell_in by 1" do
        expect(@full_coverage.sell_in).to eq(9)
      end
    end

    context "sell_in is negative" do
      it "increase price by 2" do
        @other_full_coverage = Coverages::FullCoverage.new("Full Coverage", -10, 20)
        @other_full_coverage.update_price

        expect(@other_full_coverage.price).to eq(22)
        expect(@other_full_coverage.sell_in).to eq(-11)
      end  
    end
    
    context "the price can never exceed 50" do
      it "It does not increase the price any more when it reaches 50" do
        50.times { @full_coverage.update_price }
        expect(@full_coverage.price).to eq(50)
        expect(@full_coverage.sell_in).to eq(-41)
      end
    end
  end
end
