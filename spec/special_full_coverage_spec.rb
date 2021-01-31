# frozen_string_literal: true

# spec/special_full_coverage_spec.rb
require './product'
require './coverages/special_full_coverage'

describe Coverages::SpecialFullCoverage do
  describe '.update_price' do
    before do
      special_full_coverage.update_price
    end

    context 'when sell_in is positive' do
      let(:special_full_coverage) { described_class.new('Special Full Coverage', 20, 20) }

      it 'increase price by 1' do
        expect(special_full_coverage.price).to eq(21)
      end

      it 'decrease sell_in by 1' do
        expect(special_full_coverage.sell_in).to eq(19)
      end
    end

    context 'when there are 10 days or less then' do
      let(:special_full_coverage) { described_class.new('Special Full Coverage', 20, 20) }

      it 'the price increases by 2' do
        10.times { special_full_coverage.update_price }
        expect(special_full_coverage.price).to eq(32)
        expect(special_full_coverage.sell_in).to eq(9)
        special_full_coverage.update_price
        expect(special_full_coverage.price).to eq(34)
      end
    end

    context 'when there are 5 days or less then' do
      let(:special_full_coverage) { described_class.new('Special Full Coverage', 20, 20) }

      it 'the price increases by 3' do
        expect(special_full_coverage.price).to eq(21)

        16.times { special_full_coverage.update_price }
        expect(special_full_coverage.price).to eq(46)
        expect(special_full_coverage.sell_in).to eq(3)
        special_full_coverage.update_price
        expect(special_full_coverage.price).to eq(49)
      end
    end

    context 'when no more days left then' do
      let(:special_full_coverage) { described_class.new('Special Full Coverage', 20, 20) }

      it 'the price drops to 0' do
        special_full_coverage = described_class.new('Special Full Coverage', -10, 20)
        special_full_coverage.update_price

        expect(special_full_coverage.price).to eq(0)
      end
    end
  end
end
