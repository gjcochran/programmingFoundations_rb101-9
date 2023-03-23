# task: method that returns the last digit of the nth fib number
# will rewrite LS solution from memory

# note that LS method was too slow to compute the massive last test they gave...
# in hindsight likely on purpose so that would have to write a new method

#def fibonacci_last(n)
  #first, last = [1, 1]
  #3.upto(n) do
   # first, last = [last, first + last]
  #end
  #last.to_s.chars.last.to_i
 # last
#end

# my last solution is equally as slow/fast as LS.. so need new method entirely
#def fibonacci_last(n)
  #arr = [1, 1]
  #(n-2).times do
   # arr.push(arr[-2] + arr[-1])
  #end
 # arr.last
#end

# looked at answer... DO AGAIN AT LATER DATE
def fibonacci_last(n)
  nums = [1, 1]
  3.upto(n) do
    nums = [nums.last, (nums.first + nums.last) % 10]
  end
  nums.last
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4
