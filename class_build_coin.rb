def generate_change(cents)

	coins_value = {:quarter => 25, :dime => 10, :nickel => 5, :penny => 1}
	change = {}
		



		coins_value.each do |coin, value|
			
			if 
				value <= cents
			then
				change[coin] = 0
			end



			while
				amount = cents / value
				change[coin] = amount
				cents = cents - (value * amount)
			end
		end








		# if cents >= 25
		# 	coins = cents / 25
		# 	change[:quarter] = coins
		# 	cents = cents - (25 * coins)
		# end

		# if cents >= 10
		# 	coins = cents / 10
		# 	change[:dime] = coins
		# 	cents = cents - (10 * coins)
		# end

		# if cents >= 5
		# 	change[:nickel] = cents / nickel_value
		# 	cents = cents - 5
		# end
		
		# if cents > 0
		# 	change[:penny] = cents
		# end


		change
end