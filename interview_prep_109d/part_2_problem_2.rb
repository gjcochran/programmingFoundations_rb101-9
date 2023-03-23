# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

# input - array (of integers)
# return -- integer || nil
#   nil if input size is less than 5
#   else, integer
#     which represents the minimum sum of 5 consecutive elements

# algorithm
#   explicit return of nil is input size is less than 5
#   if 6 elements, iterate twice; if 7, iterate 3 times, etc..
#   iterate from 0 upto size of the array minus 5
#     take slice of 5 elements
#       sum that slice
#         push that sum to a results array
#   return the minimum value within the results array

def minimum_sum(arr)
  return nil if arr.size < 5
  results = []
  0.upto(arr.size - 5) do |idx|
    results << arr.slice(idx, 5).sum
  end
  results.min
end

# Examples:

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# The tests above should print "true".

## review: took 10.5 mins, straightforward
