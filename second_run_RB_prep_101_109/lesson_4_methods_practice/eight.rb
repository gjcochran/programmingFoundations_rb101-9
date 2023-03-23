# What happens when we modify an array while we are iterating over it? What would be output by this code?
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

p numbers

# my answer:
# as shift is a mutating method, the array will mutate
# 1 is output then 1 is removed
# 2 is skipped, 3 is output then 2 is removed
# [3, 4] is returned
# note that was correct

# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

p numbers

# very similar to previous, pop is mutating
# 1 is output, then 4 is removed
# 2, is output then 3 is removed
# returns [1, 2]
# correct

