
# In the previous exercise, we developed a procedural method for computing the value of the nth Fibonacci numbers. This method was really fast, computing the 20899 digit 100,001st Fibonacci sequence almost instantly.

# In this exercise, you are going to compute a method that returns the last digit of the nth Fibonacci number.

# attempt 1
# def fibonacci(nth)
#   first, last = [1, 1]
#   3.upto(nth) do
#     first, last = [last, first + last]
#   end
#   last
# end

# def fibonacci_last(num)
#   digits = num.to_s.split(//)
#   digits.last.to_i
# end

# num = fibonacci(1_000_007)
# p fibonacci_last(num) 

# works but is way too slow to handle big numbers


# TESTS
# p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123456789) # -> 4

# # attempt 2
# def fibonacci_last(nth)
#   first, last = [1, 1]
#   3.upto(nth) do
#     first, last = [last, first + last]
#   end
#   last.to_s[-1].to_i
# end

# # tests
# p fibonacci_last(15)
# p fibonacci_last(20)
# p fibonacci_last(100)
# p fibonacci_last(100_001)
# p fibonacci_last(1_000_007)

# still too slow to handle big numbers!! clearly cannot convert to a string

# attempt 3
# def fibonacci_last(nth)
#   first, last = [1, 1]
#   3.upto(nth) do
#     first, last = [last, first + last]
#   end
#   last % 10
# end

# p fibonacci_last(15)
# p fibonacci_last(20)
# p fibonacci_last(100)
# p fibonacci_last(100_001)
# p fibonacci_last(1_000_007)

# still too slow to handle big numbers!

# gave up and looked at LS... their first solution was identical to my attempt #2, to note, although they did note that takes too long for the big numbers

def fibonacci_last_LS(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last
end

p fibonacci_last_LS(15)
p fibonacci_last_LS(20)
p fibonacci_last_LS(100)
p fibonacci_last_LS(100_001)
p fibonacci_last_LS(1_000_007)