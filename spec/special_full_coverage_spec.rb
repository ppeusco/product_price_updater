# spec/special_full_coverage_spec.rb
require './product'
require "./coverages/special_full_coverage"

describe Coverages::SpecialFullCoverage do 
  describe ".update_price" do
    before :each do
      @special_full_coverage = Coverages::SpecialFullCoverage.new("Special Full Coverage", 20, 20)
      @special_full_coverage.update_price
    end

    context "sell_in is positive" do
      it "increase price by 1" do
        expect(@special_full_coverage.price).to eq(21)
      end

      it "decrease sell_in by 1" do
        expect(@special_full_coverage.sell_in).to eq(19)
      end
    end

    context "price increases by 2 when there are 10 days or less" do
      it "increase price by 2" do
        10.times { @special_full_coverage.update_price }
        expect(@special_full_coverage.price).to eq(32)
        expect(@special_full_coverage.sell_in).to eq(9)
        @special_full_coverage.update_price
        expect(@special_full_coverage.price).to eq(34)
      end
    end

    context "price increases by 3 when there are 5 days or less" do
      it "increase price by 3" do
        expect(@special_full_coverage.price).to eq(21)

        16.times { @special_full_coverage.update_price }
        expect(@special_full_coverage.price).to eq(46)
        expect(@special_full_coverage.sell_in).to eq(3)
        @special_full_coverage.update_price
        expect(@special_full_coverage.price).to eq(49)
      end
    end

    context "price drops to 0 when no more days left" do
      it "price drops to 0" do
        @other_special_full_coverage = Coverages::SpecialFullCoverage.new("Special Full Coverage", -10, 20)
        @other_special_full_coverage.update_price

        expect(@other_special_full_coverage.price).to eq(0)
        expect(@other_special_full_coverage.sell_in).to eq(-11)
      end
    end
  end
end
