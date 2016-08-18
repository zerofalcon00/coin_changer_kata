require_relative "class_build_coin.rb"
require "minitest/autorun"

class Coin_changer<Minitest::Test

	def test_zero_cents_returns_empty_hash
		assert_equal({}, generate_change(0))
	end

	def test_1_cents_returns_1_penny
		assert_equal({:penny => 1}, generate_change(1))
	end

	def test_2_cents_returns_2_pennies
		assert_equal({:penny => 2}, generate_change(2))
	end

	def test_5_cents_return_hash_with_1_nickel
		assert_equal({:nickel => 1}, generate_change(5))
	end

	def test_8_cents_returns_hash_with_1_nickel_1_pennies
		assert_equal({:nickel => 1, :penny => 1}, generate_change(6))
	end
end