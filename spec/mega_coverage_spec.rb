# spec/mega_coverage_spec.rb
require "./product"
require "./coverages/mega_coverage"

describe Coverages::MegaCoverage do 
  describe ".update_price" do
    before :each do
      @full_coverage = Coverages::MegaCoverage.new("Mega Coverage", 10, 20)
      @full_coverage.update_price
    end

    context "never has to be sold or decreases in price" do
      it "the price does not change" do
        expect(@full_coverage.price).to eq(20)
      end

      it "the price does not change" do
        expect(@full_coverage.sell_in).to eq(10)
      end
    end
  end
end
