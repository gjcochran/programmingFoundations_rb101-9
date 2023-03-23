=begin
If we list all the natural numbers below 10 that are multiples of 3 or 5,
we get 3, 5, 6 and 9. The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of
3 or 5 below the number passed in. Additionally, if the number is negative,
return 0 (for languages that do have them).

Note: If the number is a multiple of both 3 and 5, only count it once.
=end

# input - integer
# return - integer 
#   sum of all multiples of 3 or of 5 below input, with duplicates removed
# rules:
#   from 0 (3) up to but not including input integer
#   if input is negative, return 0
#   only count nums that are multiple of both 3 and 5 one time

# algorithm
#   iterate from 3 up to 1 below input integer
#     select all nums that are multiples of either 3 or 5
#       test if multiple using modulo
#       store in results array
#   remove duplicates from selected nums array and return sum of that array

def multiples(int)
  results = []
  3.upto(int - 1) do |num|
    results << num if (num % 3 == 0) || (num % 5) == 0
  end
  results.sum
end

p multiples(10)# == 23
p multiples(20)# == 78
p multiples(200) == 9168

# 9 mins
