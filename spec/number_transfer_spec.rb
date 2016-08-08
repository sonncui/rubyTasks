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

    context 'number from 100 to 999' do
      it 'should transfer 100 to one handred' do
        expect(number_transfer.transfer(100)).to eq('one handred')
      end
      it 'should transfer 999 to nine handred ninety nine' do
        expect(number_transfer.transfer(999)).to eq('nine handred ninety nine')
      end
    end

    context 'number larger than 1000' do
      it 'should transfer 1000 to one thousand' do
        expect(number_transfer.transfer(1000)).to eq('one thousand')
      end

      it 'should transfer 999999 to nine handred ninety nine thousand nine handred ninety nine' do
        expect(number_transfer.transfer(999999)).to eq('nine handred ninety nine thousand nine handred ninety nine')
      end
    end
  end
  let(:number_transfer) { NumberTransfer.new }
end
