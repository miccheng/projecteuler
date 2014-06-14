require 'minitest/autorun'

class TestProblem1 < MiniTest::Unit::TestCase
  def test_get_multiples
    p = Problem1.new
    result = p.get_multiples 3, 5, 1, 10
    assert_equal [3,5,6,9], result

    result = p.get_multiples 3, 5, 1, 15
    assert_equal [3,5,6,9,10,12], result
  end

  def test_get_sum_of_multiple
    p = Problem1.new
    result = p.get_sum_of_multiple 3, 5, 10
    assert_equal 23, result

    result = p.get_sum_of_multiple 3, 5, 15
    assert_equal 45, result
  end
end

class Problem1
  def get_multiples multiplier1, multiplier2, lower, upper
    (lower...upper).to_a.select { |num|
      num % multiplier1 == 0 || num % multiplier2 == 0
    }
  end

  def get_sum_of_multiple num1, num2, range
    array1 = get_multiples num1, num2, 1, range
    array1.reduce(:+)
  end
end
