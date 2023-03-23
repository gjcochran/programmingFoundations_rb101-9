# F(n) = F(n-1) + F(n-2) when n > 2
# task: write a non-recursive fibonacci method
 # 1, 1, 2, 3, 5, 8, 13, 21, etc...


def fibonacci(n)
  return 1 if n <= 2
  arr = [1, 1]
  (n-2).times do
    arr.push(arr[-1] + arr[-2])
   end
  arr.last
end

p fibonacci(5)
p fibonacci(12)
p fibonacci(20)
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501

# good, works well.
# LS answer isn't dissimilar but some subtle changes so will type out below:
# the big difference is that there array only ever has size of 2

def fib_LS(n)
  first, last = [1, 1]
  3.upto(n) do
    first, last = [last, first + last]
  end
  last 
end
