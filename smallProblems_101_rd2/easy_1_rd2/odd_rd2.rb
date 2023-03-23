# Prompt:
#   Write a method that takes one integer argument, which may be positive, negative, or zero.
#   This method returns `true` if the number's absolute value is odd.

# D/A
  # two ways to do this ... 
   # 1. int % 2 == 1
   # 2. int.odd? method (not allowed)

# Code:

def is_odd?(int)
  int % 2 == 1  
end

# testcases

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts is_odd?(7)

# REVIEW: answer the same as LS answer
