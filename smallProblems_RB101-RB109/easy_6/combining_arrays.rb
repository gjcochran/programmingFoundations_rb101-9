# Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

# merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# irb(main):153:0> [1, 3, 5].concat([3, 6, 9])
# => [1, 3, 5, 3, 6, 9]

# irb(main):154:0> [1, 3, 5].concat([3, 6, 9]).uniq
# => [1, 3, 5, 6, 9]

def merge(arr1, arr2)
  arr1.concat(arr2).uniq
end

# works, LS answer used method that was unfamiliar with 
# irb(main):155:0> [1, 3, 5] | [3, 6, 9]
# => [1, 3, 5, 6, 9]

# def merge(array_1, array_2)
#   array_1 | array_2
# end