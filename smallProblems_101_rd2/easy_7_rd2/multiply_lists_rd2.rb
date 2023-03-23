# input: two arrays (of integers)
# output: one array (product of each el at both array indices)

def multiply_list(arr1, arr2)
  arr1.map.with_index { |el, idx| el * arr2[idx] }
end

p multiply_list([3, 5, 7], [9, 10, 11])
p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# good, works well. 

# FURTHER EXPLORATION.. attempt with zip method

def multiply_zip(arr1, arr2)
  arr1.zip(arr2).map { |el| el.inject(:*) }
end

p multiply_zip([3, 5, 7], [9, 10, 11])
