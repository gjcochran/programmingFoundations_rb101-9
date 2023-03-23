# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

# PEDAC
# P
# input: 6 inputs using puts and gets
# output: message using puts
# output if the 6th input is duplicated within an array of the first 5 inputs

# E
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].

# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].

# D/A
# puts/gets.to_i
# after each puts/gets, push the user response to a previously defined empty array
# use Array#include? method to determine if 6th input is duplicated in the array
# if/else for output

arr = []
puts ">> Enter the first number:"
ans1 = gets.chomp.to_i
arr << ans1
puts ">> Enter the second number:"
ans2 = gets.chomp.to_i
arr << ans2
puts ">> Enter the third number:"
ans3 = gets.chomp.to_i
arr << ans3
puts ">> Enter the fourth number:"
ans4 = gets.chomp.to_i
arr << ans4
puts ">> Enter the fifth number:"
ans5 = gets.chomp.to_i
arr << ans5
puts ">> Enter the sixth number:"
ans6 = gets.chomp.to_i

if arr.include?(ans6)
  puts "The number #{ans6} appears in #{arr}"
else
  puts "The number #{ans6} does not appear in #{arr}"
end

# correct although note that defining each answer was excessive...
# could have consolidated to 1 line ....
# arr << gets.chomp.to_i
