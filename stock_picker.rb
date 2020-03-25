def stock_picker(arr)
  highest_return = 0
  best_days = []
  i = 0

  while i < arr.size - 1
    buy_price = arr[i]
    j = i + 1
    while j < arr.size
      sell_price = arr[j]
      if sell_price - buy_price > highest_return
        highest_return = sell_price - buy_price
        best_days[0] = i
        best_days[1] = j
      end
      j += 1
    end
    i += 1
  end
  return best_days
end

p stock_picker([17,3,6,9,15,8,6,1,10])