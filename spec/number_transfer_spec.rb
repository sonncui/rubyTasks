require 'minitest/autorun'
require_relative('../lib/number_transfer.rb')

describe NumberTransfer do
  describe 'number transfer' do
    before do
      @number_transfer = NumberTransfer.new
    end
    describe 'NaN' do
      it 'should return zero when given NaN' do
        assert_equal 'zero', @number_transfer.transfer('')
      end
    end
    describe 'number from 0 to 99' do
      it 'should transfer 0 to character' do
        transferred_number = @number_transfer.transfer(0)
        assert_equal 'zero', transferred_number
      end
      it 'should transfer 20 to character' do
        transferred_number = @number_transfer.transfer(20)
        assert_equal 'twenty', transferred_number
      end
      it 'should transfer 99 to ninety nine' do
        transferred_number = @number_transfer.transfer(99)
        assert_equal 'ninety nine', transferred_number
      end
    end

    describe 'number from 100 to 999' do
      it 'should transfer 100 to one handred' do
        assert_equal 'one handred', @number_transfer.transfer(100)
      end
      it 'should transfer 999 to nine handred ninety nine' do
        assert_equal 'nine handred ninety nine', @number_transfer.transfer(999)
      end
    end

    describe 'number larger than 1000' do
      it 'should transfer 1000 to one thousand' do
        assert_equal 'one thousand', @number_transfer.transfer(1000)
      end

      it 'should transfer 999999 to nine handred ninety nine thousand nine handred ninety nine' do
        assert_equal 'nine handred ninety nine thousand nine handred ninety nine', @number_transfer.transfer(999999)
      end
    end
  end
end
