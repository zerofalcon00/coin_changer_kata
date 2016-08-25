def generate_change(cents)
	change = {}

		coins_value= {:quarter => 25, :dime => 10, :nickel => 5, :penny => 1}

		coins_value.each do |coin_name, coin_value|
		
		if cents >= coin_value
			coins = cents / coin_value
			change[coin_name] = coins
			cents = cents - (coin_value * coins)
		end
	end
change
end