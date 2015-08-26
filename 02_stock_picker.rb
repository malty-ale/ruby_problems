=begin
Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
=end

def stock_picker(array)
  best_days = [0,0]
  best_value = 0
  for i in (1..array.length) do
    for j in (i..array.length) do
      start_value = array[i].to_i
      end_value = array[j].to_i
      profit = end_value - start_value
      if profit > best_value
        best_value = end_value - start_value
        best_days = [i,j]
      end
    end
  end
  puts best_days
end


stock_picker([17,3,6,9,15,8,6,1,10])