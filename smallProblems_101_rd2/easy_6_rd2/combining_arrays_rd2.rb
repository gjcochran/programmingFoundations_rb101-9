#input: two arrays
# output: combines arrays without duplicate values
# there is a pre-built method for this ... union

def merge(arr1, arr2)
  arr1.union(arr2)
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# good. LS used a related method, set union, ie Array#|
# `arr1 | arr2`
