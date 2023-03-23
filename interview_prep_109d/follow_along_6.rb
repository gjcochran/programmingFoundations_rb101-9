# given arr of integers
# find an index N where the sum of ints to left of N is
# equal to sum of ints to right of N
# return -1 if this index does not exist
# else return that index 
# if the sum of array is equal to 0, then return index 0

# input: array (of integers)
# output: integer (index)
# rules:
#  -1 if does not exist
#  0 if sum of all els is 0

# algo
#   return 0 if sum is 0
#   iterate 1 upto 2nd to last index
#   slice i-1..i and i+1..last
#   if those are equal, return i

def find_even_index(arr)
  return 0 if arr[1..-1].sum == 0
  1.upto(arr.size - 1) do |i|
    return i if arr[0..i-1].sum == arr[i+1..-1].sum
  end
  -1
end

p find_even_index([1,2,3,4,3,2,1]) # 3
p find_even_index([1,100,50,-51,1,1]) # 1
p find_even_index([1,2,3,4,5,6]) # -1
p find_even_index([20,10,30,10,10,15,35]) # 3
p find_even_index([20,10,-80,10,10,15,35]) # 0
p find_even_index([10,-80,10,10,15,35,20]) # 6
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) # 3

# took 11 mins. took me a moment of testing to sort out what the 0 condition
# actually met, if had tested at start, would have gone more quickly.

###
## video answer
# deleted as wasn't helpful.
