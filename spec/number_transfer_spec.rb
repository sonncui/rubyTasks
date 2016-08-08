require 'rspec'
require_relative('../lib/numberTransfer.rb')

describe NumberTransfer do
  describe 'number transfer' do
    context 'number from 0 to 99' do
      it 'should transfer 0 to character' do
        transferred_number = number_transfer.transfer(0)
        expect(transferred_number).to eq('zero')
      end
      it 'should transfer 20 to character' do
        transferred_number = number_transfer.transfer(20)
        expect(transferred_number).to eq('twenty')
      end
      it 'should transfer 99 to ninety nine' do
        transferred_number = number_transfer.transfer(99)
        expect(transferred_number).to eq ('ninety nine')
      end
    end
  end
  let(:number_transfer) { NumberTransfer.new }
end
