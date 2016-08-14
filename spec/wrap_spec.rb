require 'minitest/autorun'
require_relative '../lib/wrap.rb'

describe 'wrap' do

  it "should return '' when given '' and 0" do
    out, err = capture_io do
      wrap('', 0)
    end
    assert_equal '', out
  end

  it "should return '' when given '' and 1" do
    out, err = capture_io do
      wrap('', 1)
    end
    assert_equal '', out
  end

  it "should return 'a \nb' when given  'a b' and 0" do
    out, err = capture_io do
      wrap('a b', 0)
    end

    assert_equal "a \nb".split("\n"), out.split("\n")
  end

  it "should return 'a \nb' when given 'a b' and 1" do
    out, err = capture_io do
      wrap('a b', 1)
    end

    assert_equal "a \nb".split("\n"), out.split("\n")
  end

  it "should return 'a b' when given 'a b' and 2" do
    out, err = capture_io do
      wrap('a b', 2)
    end

    assert_equal "a b".split("\n"), out.split("\n")
  end
end
