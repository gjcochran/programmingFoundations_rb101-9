
# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

# input - array (of integers)
# return - array (of integers)
#   representing the num of unique numbers in input array less than the num at current index
# rules:
#   only count unique numbers
#   must be less than, not equal of greater than
#   returning an array of same size as input array

# algorithm
#   iterating map method
#     select array with all numbers that are less than current number
#       remove duplicates from selected number array
#       return to map method the size of the selected array for current iteration

def smaller_numbers_than_current(arr)
  arr.map do |num|
    selected_nums = arr.select { |n| n < num }
    selected_nums.uniq.size
  end
end

# Examples:

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

# The tests above should print "true".

## review - solved in 9.5 mins.
