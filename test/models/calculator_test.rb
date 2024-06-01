require "test_helper"

class CalculatorTest < ActiveSupport::TestCase
  test "empty string returns 0" do
    assert_equal 0, Calculator.add("")
  end

  test "single number returns the number" do
    assert_equal 1, Calculator.add("1")
  end

  test "two numbers return their sum" do
    assert_equal 6, Calculator.add("1,5")
  end
end
