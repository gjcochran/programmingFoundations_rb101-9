# without using odd? or even? built-in methods... Write a method (is_odd?) that takes one integer argument, which may be positive, negative, or zero. This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

# PEDAC
# P
# input: an integer
# output: a boolean
# rules:
#   - one integer as input
#   - integer can be positive, negative, or zero
#   - returns true if the absolute value of input is odd
#   - dont need to account for incorrect inputs, input will be a valid integer value

# E (given)
# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true

# D
# using modulo, ex for odd num % 2 == 1

# A

# given an integer input as a parameter (num) to the is_odd? method
# evaluate parameter num in comparison to modulo operation
# end

# C

def is_odd?(num)
  num % 2 == 1
end

# test examples
puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts is_odd?(7)

# Further exploration

# crutch: need to convert input to absolute value before comparing with remainder operator
# https://ruby-doc.org/core-2.5.0/Numeric.html#method-i-abs
# https://ruby-doc.org/core-3.1.2/Integer.html#method-i-remainder

def is_odd_v2?(num)
  num.abs.remainder(2) == 1
end

puts is_odd_v2?(2)
puts is_odd_v2?(5)
puts is_odd_v2?(-17)
puts is_odd_v2?(-8)
puts is_odd_v2?(0)
puts is_odd_v2?(7)
