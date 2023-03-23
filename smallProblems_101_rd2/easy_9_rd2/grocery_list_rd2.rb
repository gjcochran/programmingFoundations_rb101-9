# input: Array of arrays [[string, integer]] ie. [['fruit', quantity], ...]
# output: array -> multiply each subarray from input to only return strings in output array

def buy_fruit(arr)
  result = []
  arr.each do |el|
    el[1].times do
      result << el[0]
    end
  end
  result
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) 
p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

# good. like my solution, but both LS options are clever and will note them for reference
# first solution assigns two values of subarray to local variables then shovel using times
# so is very similar to mine
# second solution cleverly uses Array method so that strings dont mash together when multiply
# ex.
# 'app' * 3 => 'appappapp'
# ['app'] * 3 => ['app', 'app', 'app']

def fruit_LS_v1(arr)
  result = []
  arr.each do |el|
    fruit, quantity = el[0], el[1]
    quantity.times { result << fruit }
  end
  result
end

def fruit_LS_v2(arr)
  arr.map { |fruit, quantity| [fruit] * quantity }.flatten
end
