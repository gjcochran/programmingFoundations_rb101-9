=begin
You are given array of integers, your task will be to count all pairs in that
array and return their count.

Notes:

Array can be empty or contain only one value; in this case return 0
If there are more pairs of a certain number, count each pair only once.
E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)

Random tests: maximum array length is 1000, range of values in array is between 0 and 1000
Examples
[1, 2, 5, 6, 5, 2]  -->  2
...because there are 2 pairs: 2 and 5

[1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4
...because there are 4 pairs: 2, 20, 6 and 2 (again)
=end

# input - array of integers
# return - integer
# rules: 
#   integers between 0..1000
#   array size between 0..1000
#   if array size if 0 or 1 , return 0
#   can be multiple pairs of same integer, but each only counted once
#   ignore all extra numbers without a pair
#   return integer representing number of pairs in input

# algorithm
#   # dont use tally method as doubt would remember in interview
#   explicit return for size 0 or 1
#   store counts in a hash 
#     empty hash storage assigned to results variable
#     hash key - integer elements
#     hash value - count of those integer elements within the input array
#   iterate over results hash, transform to new array ... integer division / 2 of values
#   store this in number of pairs variable
#   return sum of number of pairs

def pairs(array)
  return 0 if array.empty? || array.size == 1 
  results = {}
  array.each { |num| results[num] = array.count(num) }
  num_pairs = results.map { |_, count| count / 2 }
  num_pairs.sum
end

p pairs([1, 2, 5, 6, 5, 2])# == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0

# 12 mins
