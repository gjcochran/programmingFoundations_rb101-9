# Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

# going to do two versions, one as described where all math formulas are outputted, and a second where user can pick a math operation

# P
# input: 2 prompts for 2 positive integers (dont need to validate)
# output: the result of all maths || math formula option that user picked on inputs

# E
# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103

# D
# a bunch of puts back to back for option 1
# choosing to not define each math formula as a variable for option 1
# case statement for option 2

# option 1

# puts ">> Enter the first number:"
# num1 = gets.chomp.to_i
# puts ">> Enter the second number:"
# num2 = gets.chomp.to_i

# puts ">> #{num1} + #{num2} = #{num1 + num2}"
# puts ">> #{num1} - #{num2} = #{num1 - num2}"
# puts ">> #{num1} * #{num2} = #{num1 * num2}"
# puts ">> #{num1} / #{num2} = #{num1 / num2}"
# puts ">> #{num1} % #{num2} = #{num1 % num2}"
# puts ">> #{num1} ** #{num2} = #{num1**num2}"

# option 2
puts ">> Enter the first number:"
num1 = gets.chomp.to_i
puts ">> Enter the second number:"
num2 = gets.chomp.to_i
puts ">>Which operation would you like to perform:
  options:
    addition
    subtraction
    multiplication
    division
    modulo
    exponentiation"
formula = gets.chomp.downcase

case
when formula == "addition"
  puts ">> #{num1} + #{num2} = #{num1 + num2}"
when formula == "subtraction"
  puts ">> #{num1} - #{num2} = #{num1 - num2}"
when formula == "multiplication"
  puts ">> #{num1} * #{num2} = #{num1 * num2}"
when formula == "division"
  puts ">> #{num1} / #{num2} = #{num1 / num2}"
when formula == "modulo"
  puts ">> #{num1} % #{num2} = #{num1 % num2}"
when formula == "exponentiation"
  puts ">> #{num1} ** #{num2} = #{num1**num2}"
end
