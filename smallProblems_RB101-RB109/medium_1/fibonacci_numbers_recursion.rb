# The Fibonacci series is a sequence of numbers starting with 1 and 1 where each number is the sum of the two previous numbers: the 3rd Fibonacci number is 1 + 1 = 2, the 4th is 1 + 2 = 3, the 5th is 2 + 3 = 5, and so on. In mathematical terms:

# F(1) = 1
# F(2) = 1
# F(n) = F(n - 1) + F(n - 2) where n > 2

# Sequences like this translate naturally as "recursive" methods. A recursive method is one in which the method calls itself. For example:
# def sum(n)
#   return 1 if n == 1
#   n + sum(n - 1)
# end

# sum is a recursive method that computes the sum of all integers between 1 and n.

# Recursive methods have three primary qualities:

# They call themselves at least once.
# They have a condition that stops the recursion (n == 1 above).
# They use the result returned by themselves.
# In the code above, sum calls itself once; it uses a condition of n == 1 to stop recursing; and, n + sum(n - 1) uses the return value of the recursive call to compute a new return value.

# Write a recursive method that computes the nth Fibonacci number, where nth is an argument to the method.

# E
# fibonacci(1) == 1
# fibonacci(2) == 1
# fibonacci(3) == 2
# fibonacci(4) == 3
# fibonacci(5) == 5
# fibonacci(12) == 144
# fibonacci(20) == 6765

# P
# '1' = 1
# '2' = 1
# '3' = '2' + '1' = 1 + 1 = 2
# '4' = '3' + '2' = 2 + 1 = 3
# '5' = '4' + '3' = 3 + 2 = 5
# '6' = '5' + '4' = 5 + 3 = 8
# '7' = '6 '+ '5' = 8 + 5 = 13
# '8' = '7' + '6' = 13 + 8 = 21
# '9' = '8' + '7' = 21 + 13 = 34
# '10' = '9' + '8' = 34 + 21 = 55
# '11' = '10' +'9' = 55 + 34 = 89
# '12' = '11' + '10' = 89 + 55 = 144
# etc...

# fibonacci(n) = fibonacci(n - 1) + fibonacci(n - 2)

def fibonacci(nth)
  return 1 if nth <= 2
  fibonacci(nth - 1) + fibonacci(nth - 2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765