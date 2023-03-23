# Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

# You may assume that the argument will always be a valid integer that is greater than 0.

# E
# sequence(5) == [1, 2, 3, 4, 5]
# sequence(3) == [1, 2, 3]
# sequence(1) == [1]

# hmm, suspect that i can do this with times method
# test
# irb(main):001:0> input = 5
# => 5
# irb(main):002:0> arr = []
# => []
# irb(main):003:1* input.times do |num|
# irb(main):004:1*   arr << num
# irb(main):005:0> end
# => 5
# irb(main):006:0> arr
# => [0, 1, 2, 3, 4]

# worked almost perfectly, just need to adjust the input by 1 to account for zero-index

def sequence(integer)
  input = integer + 1
  arr = []
  input.times { |num| arr << num }
  arr.shift
  arr
end

p sequence(5)
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

# this works, but isn't exactly graceful...

# AH! LS answer was very clever, typed below

def sequence2(number)
  number.positive? ? (1..number).to_a : (number..-1).to_a
end

p sequence2(5)
p sequence2(-5)