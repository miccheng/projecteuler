require 'minitest/autorun'
require 'set'

class TestProblem1 < MiniTest::Unit::TestCase
  def test_get_multiples
    p = Problem1.new
    result = p.get_multiples 3, 1, 10
    assert_equal [3,6,9], result

    result = p.get_multiples 3, 1, 15
    assert_equal [3,6,9,12], result
  end

  def test_get_sum_of_multiple
    p = Problem1.new
    result = p.get_sum_of_multiple [3, 5], 10
    assert_equal 23, result

    result = p.get_sum_of_multiple [3, 5], 16
    assert_equal 60, result
  end
end

class Problem1
  def get_multiples multiplier, lower, upper
    (lower...upper).to_a.select { |num|
      num % multiplier == 0
    }
  end

  def get_sum_of_multiple nums, range
    result = Set.new
    nums.each do |num|
      result.merge get_multiples(num, 1, range)
    end
    result.reduce(:+)
  end
end

