# Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

# E
# sum_square_difference(3) == 22
#    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# sum_square_difference(10) == 2640
# sum_square_difference(1) == 0
# sum_square_difference(100) == 25164150

# P
# (1 + 2 + 3) = 6**2 = 36
# 1**2 = 1; 2**2 = 4; 3**2 = 9
# 1+4+9 = 14
# 36-14 = 22

# D/A
# could make an array with (1..input).to_a
# then arr.inject(:+)**2
# && iterate arr.each **2 added to a sum 
# compare sum1 to sum2 and absolute value is return

def sum_square_difference(num)
  arr = (1..num).to_a
  sum_sq_1 = arr.inject(:+)**2
  sum_sq_2 = 0
  arr.each { |num| sum_sq_2 += num**2 }
  (sum_sq_1 - sum_sq_2).abs
end


p sum_square_difference(3) 
p sum_square_difference(10) 
p sum_square_difference(1) 
p sum_square_difference(100) 
p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150

# mine worked, LS answer below
# def sum_square_difference(n)
#   sum = 0
#   sum_of_squares = 0

#   1.upto(n) do |value|
#     sum += value
#     sum_of_squares += value**2
#   end

#   sum**2 - sum_of_squares
# end