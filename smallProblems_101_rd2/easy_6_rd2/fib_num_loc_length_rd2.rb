# input: number of digits
# output: first num in Fibonacci that has input num of digits

# FIB: 1, 1, 2, 3, 5, 8, 13, 21
# ie sum of previous two numbers

# D/A 
# iterate until num.size == input
# could do this with a loop 

def find_fibonacci_index_by_length(digits)
  num1 = 1
  num2 = 1
  sum = 0  
  arr = [1, 1]

  loop do
    sum = num1 + num2
    num1 = num2
    num2 = sum
    arr << sum
    break if sum.to_s.size == digits
  end

  arr.length
end

p find_fibonacci_index_by_length(2)
p find_fibonacci_index_by_length(3)
p find_fibonacci_index_by_length(10)
p find_fibonacci_index_by_length(100)
p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847

# works well, although is a bit simple. LS was very similar

def find_fibonacci_index_by_length_LS(number_digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= number_digits

    first = second
    second = fibonacci
  end

  index
end
