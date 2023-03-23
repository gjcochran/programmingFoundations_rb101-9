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

# Ruby does a reasonably good job of handling recursion, but it isn't designed for heavy recursion; as a result, the Fibonacci solution is only useful up to about fibonacci(40). With higher values of nth, the recursive solution is impractical. (Our tail recursive solution did much better, but even that failed at around fibonacci(8200).)

# Fortunately, every recursive method can be rewritten as a non-recursive (procedural) method.

# Rewrite your recursive fibonacci method so that it computes its results without recursion.

# E
# fibonacci(20) == 6765
# fibonacci(100) == 354224848179261915075
# fibonacci(100_001) # => 4202692702.....8285979669707537501

# D/A
# going to push new sums to an array and then loop, seems fairly straight forward
# arr = [1, 2]
# counter = 0
# sum = 2


# '4' sum += arr[counter] 
#     sum = 2 + 1 .... 3
#     arr.push(sum)
#     arr = [1, 2, 3]
#     counter += 1

# '5' sum += arr[counter] 
#     sum = 3 + 2 .... 5
#     arr.push(sum)
#     arr = [1, 2, 3, 5]
#     counter += 1

# '6' sum += arr[counter] 
#     sum = 5 + 3 .... 8
#     arr.push(sum)
#     arr = [1, 2, 3, 5, 8]
#     counter += 1



# '3' = '2' + '1' = 1 + 1 = 2
# '4' = '3' + '2' = 2 + 1 = 3
# '5' = '4' + '3' = 3 + 2 = 5
# '6' = '5' + '4' = 5 + 3 = 8
# '7' = '6 '+ '5' = 8 + 5 = 13
# '8' = '7' + '6' = 13 + 8 = 21

def fibonacci(nth)
  if nth > 2
    arr = [1, 1]
    counter = 0
    sum = 1
    loop do 
      sum += arr[counter]
      arr.push(sum)
      counter += 1
      break if counter + 2 == nth
    end
    sum
  else
    1
  end
end

p fibonacci(10) 
p fibonacci(20) 
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
# p fibonacci(100_001) # => 4202692702.....8285979669707537501

# mine worked! although LS is much simpler, yet again...

def fibonacci_LS(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end
  last
end
p fibonacci_LS(20) 