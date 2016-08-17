require_relative "coin_changer.rb"
require "minitest/autorun"

class Coin_changer<Minitest::Test

	def test_for_nickle_to_return_1_for_5
		assert_equal({:quarter => 0, :dime => 0, :nickle => 1, :penny => 0}, money(5))
	end

	def test_for_1_nickle_and_1_dime_for_15
		assert_equal({:quarter => 0, :dime => 1, :nickle => 1, :penny => 0}, money(15))
	end

	def test_for_1_quarter_and_1_penny_for_26
		assert_equal({:quarter => 1, :dime => 0, :nickle => 0, :penny => 1}, money(26))
	end

	def test_for_2_quarters_and_2_pennies_for_52
		assert_equal({:quarter => 2, :dime => 0, :nickle => 0, :penny => 2}, money(52))
	end

	def test_for_3_quarters_1_dime_and_4_pennies_for_89
		assert_equal({:quarter => 3, :dime => 1, :nickle => 0, :penny => 4}, money(89))
	end
end