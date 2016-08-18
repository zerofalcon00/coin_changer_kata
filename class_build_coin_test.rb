require_relative "class_build_coin.rb"
require "minitest/autorun"

class Coin_changer<Minitest::Test

	def test_zero_cents_returns_empty_hash
		assert_equal({}, generate_change(0))
	end

	def test_1_cents_returns_1_penny
		assert_equal({:penny => 1}, generate_change(1))
	end
end