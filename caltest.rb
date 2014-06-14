require 'minitest/autorun'

class TestCalc < MiniTest::Unit::TestCase
	def test_blah
		calc = Calc.new
		assert calc
	end

	def test_sum
		calc = Calc.new
		sum = calc.sum(1,2)
		assert_equal 3, sum

		sum = calc.sum(2,2)
		assert_equal 4, sum
	end

end

class Calc
	def sum arg1, arg2
		arg1 + arg2
	end
end