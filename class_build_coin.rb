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
			change[:nickel] = cents / nickel
			cents = cents - nickel
		end
		
		if cents > 0
			change[:penny] = cents
		end


		change
end