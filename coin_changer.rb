# coin changer kata

# write a function that takes a number of cents, and then returns a hash containing the least number of coins needed to generate the value of cents.
#eg. if you have 11 cents you should return {:dime => 1, :penny =>1} if you have 31 cents you should return {:quater => 1, :nickel => 1, :penny =>1"}; if 93 cents {:quarter => 3, :dime => 1, nickel =>1, penny: => 3}
#build your coin_changer using test. commit to git after every test.
#{:key => value}


def money(change)
 
	coins_value = {:quarter => 25, :dime => 10, :nickle => 5, :penny => 1}

	correct_change = {:penny => 0, :nickle => 0, :dime => 0, :quarter => 0}

	coins_value.each do |coin, value|
		while
			value <= change
	    	correct_change[coin] += 1
	    	change -= value
	    end
	end
  correct_change
end