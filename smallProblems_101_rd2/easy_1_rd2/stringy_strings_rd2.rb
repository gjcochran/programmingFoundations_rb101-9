# Prompt: Write a method that takes one argument, a positive integer, and 
# returns a string of alternating 1s and 0s, starting with 1
# length of string to match given integer

# EXAMPLES:
# puts stringy(6) == '101010'
# puts stringy(9) == '101010'
# puts stringy(4) == '101010'
# puts stringy(7) == '101010'

# D/A 
# edge case: 1 
# else: 
#   num / 2 = n ;; n * '10'
#    ternary ... odd? ^ : + '1'


def stringy(num)
  if num > 1
    str = '10'
    n = num / 2
    num.odd? ? (str * n) + '1' : (str * n)
  else
    '1'
  end
end

# testcases
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(1) == '1'

# REVIEW:
# My answer works well, although LS solved in a different manner, written out below for reference/practice:

def stringy_LS(size)
  nums = []

  size.times do |i|
    num = i.even? ? 1 : 0
    nums << num
  end

  nums.join
end
