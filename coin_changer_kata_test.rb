require_relative "coin_changer.rb"
require "minitest/autorun"

class Coin_changer<Minitest::Test

	def test_for_nickle_to_return_1
		assert_equal({:quarter => 0, :dime => 0, :nickle => 1, :penny => 0}, money(5))
	end

	def test_for_1_nickle_and_1_dime
		assert_equal({:quarter => 0, :dime => 1, :nickle => 1, :penny => 0}, money(15))
	end

end