
# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

# input - array of integers (size variable)
#   what is negative?
#     shouldnt impact
#   what should i return if there are less than 2 elements in an array?
# return - array of integers (size 2)
# rules:
#   numbers dont have to consecutive
#   what if there are multiple options with same closeness?
#     third exmaple has this, they return first
#   what if there are two elements with same value?
#   return the elements in the order they were in in the input array

# algorithm
#   nested iteration in order compare each element to all other elements
#     discount zero differences
#     return array with [first value, second value, difference]
#       flatten
#       remove elements where difference was zero
#   min by difference

def closest_numbers(arr)
  results = arr.map do |num1|
    arr.map do |num2|
      [num1, num2, (num1 - num2).abs]
    end
  end
  results = results.flatten(1).reject { |sub| sub.last == 0 }
  results = results.min_by { |sub| sub.last }
  results[0..1]
end

# Examples:

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]

# The tests above should print "true".

## took 22 mins. 
# works, but had quite a few questions for interviewer which 
#   may have changed my approach is had been able to ask them
# also my nested map method call isnt very clean as 
#   had to remove the options where it was the same number
#     this is the biggest concern as then my algo would fail if there are test cases containing two
#     different elements with the same value
#   had to flatten the return array
#   had duplicate return subarrays
# besides main problem of how to handle same elements in input, decent work.
