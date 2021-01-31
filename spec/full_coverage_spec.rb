# frozen_string_literal: true

# spec/full_coverage_spec.rb
require './product'
require './coverages/full_coverage'

describe Coverages::FullCoverage do
  describe '.update_price' do
    before do
      full_coverage.update_price
    end

    context 'when the sell_in is positive' do
      let(:full_coverage) { described_class.new('Full Coverage', 10, 20) }

      it 'increase price by 1' do
        expect(full_coverage.price).to eq(21)
      end

      it 'decrease sell_in by 1' do
        expect(full_coverage.sell_in).to eq(9)
      end
    end

    context 'when the sell_in is negative' do
      let(:full_coverage) { described_class.new('Full Coverage', 10, 20) }

      it 'increase price by 2' do
        other_full_coverage = described_class.new('Full Coverage', -10, 20)
        other_full_coverage.update_price

        expect(other_full_coverage.price).to eq(22)
        expect(other_full_coverage.sell_in).to eq(-11)
      end
    end

    context 'when the price exceed 50' do
      let(:full_coverage) { described_class.new('Full Coverage', 10, 20) }

      it 'does not increase the price' do
        50.times { full_coverage.update_price }
        expect(full_coverage.price).to eq(50)
        expect(full_coverage.sell_in).to eq(-41)
      end
    end
  end
end
