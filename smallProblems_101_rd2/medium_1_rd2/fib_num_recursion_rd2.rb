# F(1) = 1
# F(2) = 1
# F(n) = F(n-1) + F(n-2) when n > 2

# task: write recursive fibonacci method
# ie method that calls itself
# A - they gave me the math formula... just write it as code.


def fibonacci(n)
  return 1 if n == 1 
  return 1 if n == 2
  fibonacci(n - 1) + fibonacci(n - 2)
end

p fibonacci(1)
p fibonacci(5)
p fibonacci(12)
p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765

# good. could consolidate lines 2..3 with one line.
# ... `return 1 if n <= 2`
