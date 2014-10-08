# Implement a method #stock_picker that takes in an array of stock prices,
# one for each hypothetical day. It should return a pair of days representing 
# the best day to buy and the best day to sell. Days start at 0.

# > stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12

def stock_picker stocks
	stocks_copy = Array.new(stocks)
	best = []
	max_profit = 0
	stocks.each_with_index do |buy, i|
		stocks_copy.each_with_index do |sell, j|
			if (j > i)
			#if (j < i)
			#	next
			#end
				if sell - buy > max_profit
					max_profit = sell - buy 
					best[0] = i
					best[1] = j
				end
			end
		end
	end
	best
end
stock_prices = [17,3,6,9,15,8,6,1,10]
best_days = stock_picker stock_prices
best_buy = best_days[0]
best_sell = best_days[1]
puts "The best day to buy is on the #{best_buy+1} day for $#{stock_prices[best_buy]}"
puts "The best day to sell is on #{best_sell+1} day for $#{stock_prices[best_sell]}"
puts "For a profit of $#{stock_prices[best_sell] - stock_prices[best_buy]}"