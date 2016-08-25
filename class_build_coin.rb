def generate_change(cents)

	# coins_value = {:quarter => 25, :dime => 10, :nickel => 5, :penny => 1}
	change = {}
		# coins_value.each do |coin, value|
			
		# 	if 
		# 		value <= cents
		# 	then
		# 		change[coin] = 0
		# 	end



		# 	while
		# 		amount = cents / value
		# 		change[coin] = amount
		# 		cents = cents - (value * amount)
		# 	end
		# end
		quarter = 25
		dime = 10
		nickel = 5
		penny = 1
		
		if cents >= quarter
			coins = cents / quarter
			change[:quarter] = coins
			cents = cents - (quarter * coins)
		end

		if cents >= dime
			coins = cents / dime
			change[:dime] = coins
			cents = cents - (dime * coins)
		end

		if cents >= nickel
			coins = cents / nickel
			change[:nickel] = coins
			cents = cents - nickel
		end
		
		if cents >= penny
			coins = cents / penny
			change[:penny] = coins
			cents = cents - penny
		end


		change
end