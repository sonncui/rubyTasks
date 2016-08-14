require 'minitest/autorun'
require_relative '../lib/buzz_fizz.rb'

describe 'BuzzFizz' do

  it 'should return 1 2 Fizz Fizz when given 1 2 3 13' do
    out, err = capture_io do
      buzz_fizz([1, 2, 3, 13])
    end
    assert_equal '1 2 Fizz Fizz', out
  end

  it 'should return Buzz Buzz when given 5 52' do
    out, err = capture_io do
      buzz_fizz([5, 52])
    end
    assert_equal 'Buzz Buzz', out
  end

  it 'should return FizzBuzz FizzBuzz when given 15 53' do
    out, err = capture_io do
      buzz_fizz([15, 53])
    end
    assert_equal 'FizzBuzz FizzBuzz', out
  end
end
