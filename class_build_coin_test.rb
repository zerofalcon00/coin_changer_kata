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

	def test_6_cents_returns_hash_with_1_nickel_1_pennies
		assert_equal({:nickel => 1, :penny => 1}, generate_change(6))
	end

	def test_9_cents_returns_hash_with_1_nickel_4_pennies
		assert_equal({:nickel => 1, :penny => 4}, generate_change(9))
	end

	def test_10_cents_returns_has_with_1_dime
		assert_equal({:dime => 1}, generate_change(10))
	end

	def test_11_cents_returns_hash_with_1_dime_1_penny
		assert_equal({:dime => 1, :penny => 1}, generate_change(11))
	end

	def test_15_cents_returns_hash_with_1_dime_1_nickel
		assert_equal({:dime => 1, :nickel => 1}, generate_change(15))
	end

	def test_20_cents_returns_hash_with_2_dimes
		assert_equal({:dime => 2}, generate_change(20))
	end

	def test_25_cents_returns_hash_with_1_quarter
		assert_equal({:quarter => 1}, generate_change(25))
	end
end