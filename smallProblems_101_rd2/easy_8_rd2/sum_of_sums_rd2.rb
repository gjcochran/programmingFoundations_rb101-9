# input: Array of integers
# output: integer -> sum of subarray sums (builds)


# A 
# each method with counter
# [0..counter].sum (to new array outside block)
# then sum external array with sum or reduce methods

def sum_of_sums(arr)
  result = []
  arr.each_index do |idx|
    result << arr[0..idx].sum
  end
  result.sum
end

p sum_of_sums([3, 5, 2])

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35

# good. LS solution is relatively similar although a bit more complex
# rather than use [] method they used the alias method slice
# rather than use sum method they used the reduct method to sum
# essentially the same thing as mine, but with a twist

def sum_of_sums_LS(numbers)
  sum_total = 0
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end
  sum_total
end
