# Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers. Your result should also be an integer.

# P
# input: one array of integers
# output: the average of all the integers in input array
# output an integer
# integer division is acceptable, ie wont be exact

# E
# puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# D/A

# array#Size to determine denominator
# loop to pick each integer from array and add to running sum

# C

def average(arr)
  sum = 0
  counter = 0

  loop do
    sum += arr[counter]
    counter += 1
    break if counter == arr.size
  end
  sum / arr.size
end

puts average([1, 6]) == 3
puts average([1, 6])
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# my answer worked! but yet again was slighly different than LS answer. forgot about built-in method Enumerable#reduce ... which removes need to use a loop to add all the numbers in the given array

# def average(numbers)
#   sum = numbers.reduce { |sum, number| sum + number }
#   sum / numbers.count
# end

# # can also be written

# def average(numbers)
#   sum = numbers.reduce(:+)
#   sum / numbers.count
# end
