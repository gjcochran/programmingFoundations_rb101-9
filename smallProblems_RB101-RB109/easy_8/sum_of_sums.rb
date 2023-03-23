# Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.

# E
# sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# sum_of_sums([4]) == 4
# sum_of_sums([1, 2, 3, 4, 5]) == 35

def sum_of_sums(arr)
  total_sum = 0
  counter = 0
  sum = 0
  loop do
    sum += arr[counter]
    total_sum += sum
    counter += 1
    break if counter == arr.size
  end
  total_sum
end

p sum_of_sums([3, 5, 2])
p sum_of_sums([1, 5, 7, 3]) 
p sum_of_sums([4])
p sum_of_sums([1, 2, 3, 4, 5])

# LS's first solution was nearly identical to mine, simply using each rather than loop 
# def sum_of_sums(numbers)
#   sum_total = 0
#   accumulator = 0

#   numbers.each do |num|
#     accumulator += num
#     sum_total += accumulator
#   end

#   sum_total
# end

# LS's second solution as a bit different, using more complicated methods

# def sum_of_sums(numbers)
#   sum_total = 0
#   1.upto(numbers.size) do |count|
#     sum_total += numbers.slice(0, count).reduce(:+)
#   end
#   sum_total
# end