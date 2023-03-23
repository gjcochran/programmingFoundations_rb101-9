=begin
Given a List [] of n integers , find minimum number to be inserted in a list,
so that sum of all elements of list should equal the closest prime number .

Notes
List size is at least 2 .

List's numbers will only positives (n > 0) .

Repetition of numbers in the list could occur .

The newer list's sum should equal the closest prime number .

Input >> Output Examples
1- minimumNumber ({3,1,2}) ==> return (1)
Explanation:
Since , the sum of the list's elements equal to (6) ,
the minimum number to be inserted to transform the sum to prime number is (1) ,
which will make the sum of the List equal the closest prime number (7) .

2-  minimumNumber ({2,12,8,4,6}) ==> return (5)
Explanation:
Since , the sum of the list's elements equal to (32) ,
the minimum number to be inserted to transform the sum to prime number is (5) ,
which will make the sum of the List equal the closest prime number (37) .

3- minimumNumber ({50,39,49,6,17,28}) ==> return (2)
Explanation:
Since , the sum of the list's elements equal to (189) ,
the minimum number to be inserted to transform the sum to prime number is (2) ,
which will make the sum of the List equal the closest prime number (191) .
=end


# input - array of integers
# return - integer
#   represents difference between sum of input array and next closest prime number
# rules: 
#   array size will be at least 2
#   array wont contain any numbers less than 0
#   array can repeat number elements
#   clost prime means next largest prime number (than sum of array)

# algorithm
#   use prime class
#   prime? method am aware of to test if a number is prime
#   first, sum all array elements and store in variable
#   create a iteration variable for loop which starts at current sum number
#   loop method
#     evaluate if current number is prime?
#       if true, exit loop
#       else
#         add 1 to current number 
#   once exit loop, return difference between current number and then sum of input array

require 'prime'

def minimum_number(numbers)
  sum = numbers.sum
  current_num = sum
  loop do
    break if current_num.prime?
    current_num += 1
  end
  current_num - sum
end

p minimum_number([3,1,2]) == 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2

# took 9 mins
