# find the max sum of a contiguous subsequence in an array of integers
# eg [-2, 1, -3, 4, -1, 2, 1, -5, 4] -> [4, -1, 2, 1]
# return 0 if all nums in array are negative || if input is empty

# my answer
# input - array of integers
# output - integer (sum of max subarray)
#   0 if max < 0 or input empty
# questions?
#   always only integer inputs?
#   no other qs
# how?
#   return 0 if input.empty? or if input does not contain any positive elements (any?)
#   return input.sum if all els positive (all?)
#   index 0 upto index max
#     push to eval array sub arrays of index current + 1 upto max index
#   max_by subarray.sum

def max_sequence(array)
  return 0 if array.empty? || array.none? { |n| n.positive? }
  return array.sum if array.all? { |n| n.positive? }

  eval_arr = []

  0.upto(array.size - 1) do |idx|
    idx.upto(array.size - 1) do |last|
      eval_arr << array[idx..last]
    end
  end

  eval_arr.map { |sub| sub.sum }.max
end



p max_sequence([]) # 0
p max_sequence([-2, 1, -3, 4])
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) # 6
p max_sequence([11]) # 11
p max_sequence([-32]) # 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) # 12

# review: took 15 mins
# again, changed several methods which planned on in moment after testing, but without much issue
#  ie any? to none? and max_by to map + max

###
# video answer

# Problem
# find the subarray in an array that contains the largest sum. The subarray can be
# any length. If all numbers are positive, return the simple sum. if all numbers are 
# negative, return 0.

# input - array
# output - integer

# Examples
#p max_sequence([]) # 0
#p max_sequence([-2, 1, -3, 4])
#p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) # 6
#p max_sequence([11]) # 11
#p max_sequence([-32]) # 0

# Data - Arrays

# Algorithm

# result array = []
# iterate from 0 to length of the array
#   iterate again from 0 to length of the array
#   add an array that ranges from first idx to second idx to result array
# iterate thru the result array, collect sum of all subarrays
# find the max sum of subarrays

def max_sequence_template(array)
  return 0 if array.all? { |number| number < 0 }
  result = []
  (0..(array.size - 1)).each do |index1|
    (index1..(array.size - 1)).each do |index2|
      result << array[index1..index2]
    end
  end
  result.max_by { |sub_array| sub_array.sum }.sum
end
