# frozen_string_literal: true

# spec/mega_coverage_spec.rb
require './product'
require './coverages/mega_coverage'

describe Coverages::MegaCoverage do
  describe '.update_price' do
    before do
      mega_coverage.update_price
    end

    context 'when the price does not decrease and should never be sold' do
      let(:mega_coverage) { described_class.new('Mega Coverage', 10, 20) }

      it 'the price does not change' do
        expect(mega_coverage.price).to eq(20)
      end

      it 'the sell_in does not change' do
        expect(mega_coverage.sell_in).to eq(10)
      end
    end
  end
end
