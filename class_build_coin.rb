def generate_change(cents)

	change = {}
		dime_value = 10
		nickel_value = 5

		if cents >= 10
			coins = cents / 10
			change[:dime] = coins
			cents = cents - (10 * coins)
		end

		if cents >= 5
			change[:nickel] = cents / nickel_value
			cents = cents - 5
		end
		
		if cents > 0
			change[:penny] = cents
		end


		change

	# if cents > 15
	# 	change[:dime] = 1
	# 	change[:nickel] = 1
	# 	change[:penny] = cents - 5
	# elsif cents == 15
	# 	change[:dime] = 1
	# 	change[:nickel] = 1
	# elsif cents > 10
	# 	change[:dime] = 1
	# 	change[:penny] = cents - 10
	# elsif cents >= 10
	# 	change[:dime] = 1
	# elsif cents > 5
	# 	change[:nickel] = 1
	# 	change[:penny] = cents - 5
	# elsif cents >= 5
	# 	change[:nickel] = 1
	# elsif cents > 0
	# 	change[:penny] = cents
	# end
	# change
end