def day_trader(prices)
  buy_day = 0
  sell_day = 0
  max_profit = 0

  # Parcourir les jours d'achat
  (0...prices.length).each do |i|
    # Parcourir les jours de vente
    ((i + 1)...prices.length).each do |j|
      profit = prices[j] - prices[i]
      if profit > max_profit
        max_profit = profit
        buy_day = i
        sell_day = j
      end
    end
  end

  [buy_day, sell_day]
end
def display_result(prices, result)
  buy_day = result[0]
  sell_day = result[1]
  buy_price = prices[buy_day]
  sell_price = prices[sell_day]
  profit = sell_price - buy_price

  puts "Buy on day #{buy_day + 1} at $#{buy_price}"
  puts "Sell on day #{sell_day + 1} at $#{sell_price}"
  puts "Maximum profit: $#{profit}"
end
prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
result = day_trader(prices)
display_result(prices, result)
