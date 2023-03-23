# Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

# E
# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []
# oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

# D/A
# option 1: loop/do method with .even? and push to empty array
# idea: use select method, if index of each element is even, then return ## select.with_index (two methods chained to replicate each_with_index)
#   use Array#index

def oddities(arr)
  arr.select.with_index { |el, ind| el if ind.even? }
end

# def oddities(arr)
#   counter = 0
#   narr = []
#   loop do
#     narr << arr[counter] if counter.even?
#     counter += 1
#     break if counter == arr.size
#   end
#   narr
# end

p oddities([2, 3, 4, 5, 6])
# oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(%w[abc def])
# oddities([123]) == [123]
# oddities([]) == []
# oddities([1, 2, 3, 4, 1]) == [1, 3, 1]
