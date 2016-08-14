require 'minitest/autorun'
require_relative '../lib/buzz_fizz.rb'

describe 'BuzzFizz' do
  # before do
  #   Kernel.stub :puts, @string do
  #     @string
  #   end
  # end

  it 'should return 1 2 Fizz Fizz when given 1 2 3 13' do
    assert_equal '1 2 Fizz Fizz', buzz_fizz_string([1, 2, 3, 13])
  end

  it 'should return Buzz Buzz when given 5 52' do
    assert_equal 'Buzz Buzz', buzz_fizz_string([5, 52])
  end

  it 'should return FizzBuzz FizzBuzz when given 15 53' do
    assert_equal 'FizzBuzz FizzBuzz', buzz_fizz_string([15, 53])
  end
end
