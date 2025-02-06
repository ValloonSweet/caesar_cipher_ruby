def stock_picker(prices)
  min_price = Float::INFINITY
  min_day = 0
  max_profit = 0
  best_pair = []

  prices.each_with_index do |price, day|
    if price < min_price
      min_price = price
      min_day = day
    else
      if price - min_price > max_profit
        max_profit = price - min_price
        best_pair = [min_day, day] 
      end
    end
  end

  return best_pair
end