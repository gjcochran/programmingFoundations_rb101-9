# input: array
# output: new array, all els shifted to left by 1
# rules: cant use #rotate! method

# A
# map.with_index

def rotate_array(arr)
  arr.map.with_index { |_, idx| idx+1 == arr.size ? arr[0] : arr[idx+1] }
end

p rotate_array([7, 3, 5, 2, 9, 1])
p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

# review: all tests passed.
# LS answer much preferred! 
# `arr[1..-1]+ [arr[0]]`
