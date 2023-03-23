# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world.

# Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that it takes 6 iterations before it generates the first 2 digit number.

# Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

# E
# find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# find_fibonacci_index_by_length(10) == 45
# find_fibonacci_index_by_length(100) == 476
# find_fibonacci_index_by_length(1000) == 4782
# find_fibonacci_index_by_length(10000) == 47847

# D/A
# fib_arr = [1, 1, 2, 3, 5, 8, 13, 21] #etc
# DONT want infinite loop, therefore the key is only calculating up until the index
# each_index seems plausible 
# the index could also refer to times method..?

# first, going to break this apart and figure out how to create the fibonacci sequence ...

# test 1 - worked
#   num1 = 1
#   num2 = 1
#   counter = 0
#   arr = [num1, num2]
#   loop do
#     sum = num1 + num2
#     arr << sum
#     num1 = sum if counter.even?
#     num2 = sum if counter.odd?
#     counter += 1
#     break if arr.size == 7
#   end

# test 2 - worked
# def fibonacci_sequence(length)
#   num1 = 1
#   num2 = 1
#   counter = 2
#   arr = [num1, num2]
#   loop do
#     sum = num1 + num2
#     arr << sum
#     num1 = sum if counter.even?
#     num2 = sum if counter.odd?
#     counter += 1
#     break if arr.size == length
#   end
#   arr
# end

# p fibonacci_sequence(12)
#=>
# [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144]

# NOW, have to figure out how to compare the results array to a number of digits... then can refactor 

# D/A #2
# compare each integer to input using .to_s.size
# break the loop if they are equal

def find_fibonacci_index_by_length(digits)
  num1 = 1
  num2 = 1
  counter = 2
  arr = [num1, num2]
  loop do
    sum = num1 + num2
    arr << sum
    num1 = sum if counter.even?
    num2 = sum if counter.odd?
    counter += 1
    break if num1.to_s.size == digits || num2.to_s.size == digits
  end
  arr.index(arr.last) + 1 # b/c prompt qualifies that is index-1
end

p find_fibonacci_index_by_length(2)
p find_fibonacci_index_by_length(3)
p find_fibonacci_index_by_length(4)
p find_fibonacci_index_by_length(2) == 7 
p find_fibonacci_index_by_length(3) == 12        
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847

# my solution was very similar to LS, albeit a bit of extraneous logic. LS solution below

# def find_fibonacci_index_by_length(number_digits)
#   first = 1
#   second = 1
#   index = 2

#   loop do
#     index += 1
#     fibonacci = first + second
#     break if fibonacci.to_s.size >= number_digits

#     first = second
#     second = fibonacci
#   end

#   index
# end
