STOCK_PRICES = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stock_picker(array)
  nested_arr = array.product

  combination_of_prices = nested_arr.map { |arr| arr.product(array[array.index(arr.first) + 1, array.length])
    .uniq unless nested_arr.last == arr }.compact

  reduce_prices = combination_of_prices.map { |arr| arr.max }.max { |a, b| a.last - a.first <=> b.last - b.first }

  best_days = reduce_prices.map { |price| array.index(price) }

  p best_days

end

stock_picker(STOCK_PRICES)

stock_picker([3, 9, 11, 1, 8, 13, 5, 2])
