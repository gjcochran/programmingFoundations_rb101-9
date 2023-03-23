# input: Array of integers
# output: float -> input.product / input.size

def show_multiplicative_average(arr)
  (arr.inject(:*) / arr.size.to_f).round(3)
end

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

# good.
# did not format the way LS wanted ... would do this by setting
# equation in my method to a variable, eg result
# `format('%.3f', result)`
# and dont need round(3) if format this way

# LS answer below
def show_multiplicative_average_LS(numbers)
  product = 1.to_f
  numbers.each { |number| product *= number }
  average = product / numbers.size
  puts "The result is #{format('%.3f', average)}"
end
