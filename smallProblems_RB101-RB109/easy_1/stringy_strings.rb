# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

# input: positive integer
# output: 10101.. where length of output is equal to input
# output is a string

# E
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# D
# 0 == 0
# 1 == 1
# 2 == 10
# 3 == 101
# 4 == 1010 # NOT BINARY

# 9 / 2 = 4 rem 1 = 4 2s 1 1 = 10 10 10 10 1
# bc integer division doesnt return the rem, need to determine if odd or even

# A

# given a positive integer
# determine if is even
# if integer is even...
# integer / 2 = div ; '10' div times is return value
# if integer is odd
# interger / 2 = div; '10' div times + '1' at end is return value

# C

def stringy(int)
  div = int / 2
  int.even? ? "10" * div : "10" * div + "1"
end

puts stringy(7)

puts stringy(6) == "101010"
puts stringy(9) == "101010101"
puts stringy(4) == "1010"
puts stringy(7) == "1010101"

# although mine worked, LS answer was very different (pasted below)
# def stringy(size)
#   numbers = []

#   size.times do |index|
#     number = index.even? ? 1 : 0
#     numbers << number
#   end

#   numbers.join
# end
