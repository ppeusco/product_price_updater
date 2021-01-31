# frozen_string_literal: true

# spec/low_coverage_spec.rb
require './product'
require './coverages/low_coverage'

describe Coverages::LowCoverage do
  describe '.update_price' do
    before do
      low_coverage.update_price
    end

    context 'when the sell_in is positive' do
      let(:low_coverage) { described_class.new('Low Coverage', 10, 20) }

      it 'decrease price by 1' do
        expect(low_coverage.price).to eq(19)
      end

      it 'decrease sell_in by 1' do
        expect(low_coverage.sell_in).to eq(9)
      end
    end

    context 'when the sell_in is negative' do
      let(:low_coverage) { described_class.new('Low Coverage', 10, 20) }

      it 'decrease price by 2' do
        low_coverage = described_class.new('Low Coverage', -10, 20)
        low_coverage.update_price
        expect(low_coverage.price).to eq(18)
        expect(low_coverage.sell_in).to eq(-11)
      end
    end

    context 'when the price reaches 0' do
      let(:low_coverage) { described_class.new('Low Coverage', 10, 20) }

      it 'does not decrease the price any more' do
        50.times { low_coverage.update_price }
        expect(low_coverage.price).to eq(0)
        expect(low_coverage.sell_in).to eq(-41)
      end
    end
  end
end
