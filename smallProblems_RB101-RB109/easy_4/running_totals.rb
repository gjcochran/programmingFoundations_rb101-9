# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

# P
# input: array of numbers
# output: array of numbers
# rules:
#  -- input and output have same number of array elements
# -- add each element in order from input in output

# E
# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []

# D/A
# each_with_index seems like a good fit for this
# for each element, add to the previous element(s) and push to an array
# if statement so that starts on index 1

# C
def running_total(arr)
  arr2 = []
  arr.each_index do |ind|
    ind > 0 ? arr2 << (arr[ind] += arr[ind - 1]) : arr2 << arr[ind]
  end
  arr2
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
p running_total([14, 11, 7, 15, 20])

#  MADE IT MUCH MORE COMPLICATED THAN NEEDED TO BE ...
# def running_total(array)
#   sum = 0
#   array.map { |value| sum += value }
# end
