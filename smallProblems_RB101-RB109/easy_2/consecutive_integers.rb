# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

#  E
# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.

# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

# D/A
# going to try to use the Integer#downto method, pushing to an array, then can loop the array to calculate the sum or product
#  from ruby docs.. 10.downto(5) {|i| a << i }

puts ">>Please enter an integer greater than 0"
int = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product"
answer = gets.chomp

# test

# arr = []
# sum = 0
# product = 1
# int.downto(1) { |i| arr << i }

# if answer.downcase == "s"
#   arr.each { |i| sum += i }
#   puts "the sum of the integers between 1 and #{int} is #{sum}"
# elsif answer.downcase == "p"
#   arr.each { |i| product *= i }
#   puts "the product of the integers between 1 and #{int} is #{product}"
# else
#   puts "not a valid request, put s or p"
# end

# note that could have used inject method rather than my solution of downto, add to array, then iterate with each and add to sum ...
# https://ruby-doc.org/core-3.1.2/Enumerable.html#method-i-inject

# ex.

if answer == "s"
  sum = (1..int).inject(:+)
  puts "the sum of the integers between 1 and #{int} is #{sum}"
elsif answer == "p"
  product = (1..int).inject(:*)
  puts "the product of the integers between 1 and #{int} is #{product}"
end
