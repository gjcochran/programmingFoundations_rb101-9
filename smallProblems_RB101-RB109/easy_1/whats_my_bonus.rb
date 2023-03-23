# Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

# PEDAC
# P
# input: 2 inputs: a positive integer and a boolean
# output: positive integer.
# if boolean input is true, bonus = 50% of integer input
# if boolean input is false, bonus = 0
# assume that arguments are as described

# E
# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50_000, true) == 25_000

# D/A
# appears to be a simple if/else

def calculate_bonus(salary, bool)
  bonus = 0
  bonus += salary / 2 if bool == true
  bonus
end

puts calculate_bonus(2800, true)
puts calculate_bonus(2800, false)

# LS answer with ternary below:
# def calculate_bonus(salary, bonus)
#   bonus ? (salary / 2) : 0
# end
