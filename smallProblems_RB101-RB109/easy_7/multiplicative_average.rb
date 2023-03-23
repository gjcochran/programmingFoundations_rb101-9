# Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.


# P
# input: array (integers)
# output: string with float calculated by multiplying all array elements divided by array.size

# E
# show_multiplicative_average([3, 5])                # => The result is 7.500
# show_multiplicative_average([6])                   # => The result is 6.000
# show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

# D/A
# could do a loop with counter to array.size
# for each element in input array, convert to float and then multiply to predefined result (set to 1 above loop)

# C

def show_multiplicative_average(arr)
  result = 1
  arr.each do |int|
    result *= int.to_f
  end
  "the result is #{(result/arr.size).round(3)}"
end

p show_multiplicative_average([3, 5]) 
p show_multiplicative_average([6])
p show_multiplicative_average([2, 5, 7, 11, 13, 17])

# LS answer was similar, below. note that could use #inject method
# def show_multiplicative_average(numbers)
#   product = 1.to_f
#   numbers.each { |number| product *= number }
#   average = product / numbers.size
#   puts "The result is #{format('%.3f', average)}"
# end