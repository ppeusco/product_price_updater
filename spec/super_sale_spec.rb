# frozen_string_literal: true

# spec/super_sale_spec.rb

require './product'
require './coverages/super_sale'

describe Coverages::SuperSale do
  describe '.update_price' do
    before do
      super_sale.update_price
    end

    context 'when the sell_in is positive' do
      let(:super_sale) { described_class.new('Super Sale', 10, 20) }

      it 'decrease price by 2' do
        expect(super_sale.price).to eq(18)
      end

      it 'decrease sell_in by 1' do
        expect(super_sale.sell_in).to eq(9)
      end
    end

    context 'when the sell_in is negative' do
      let(:super_sale) { described_class.new('Super Sale', -10, 20) }

      it 'decrease price by 2' do
        expect(super_sale.price).to eq(16)
      end
    end

    context 'when the price can never be less than zero' do
      let(:super_sale) { described_class.new('Super Sale', 10, 20) }

      it 'does not increase the price any more when it reaches 50' do
        50.times { super_sale.update_price }
        expect(super_sale.price).to eq(0)
      end
    end
  end
end
