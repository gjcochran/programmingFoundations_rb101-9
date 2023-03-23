# Write a method that takes two sorted Arrays as arguments, and returns a new Array that contains all elements from both arguments in sorted order.

# You may not provide any solution that requires you to sort the result array. You must build the result array one element at a time in the proper order.

# Your solution should not mutate the input arrays.

# D/A
# considered zip, and union array methods, but none of the 3 are quite what want.. if this method exists (outside of sort), dont know it
# concat will mutate arr1, therefore going to join add chars map(to_i)
# then going to use min to add each min to a new array and delete that min from old array 

def merge(a, b)
  c = (a.join + b.join).chars.map(&:to_i)
  d = []
  
  (c.size).times do
    d << c.min
    c.delete_at(c.index(c.min))
  end
  d
end


# testcases

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
p merge([1, 5, 9], [2, 6, 8]) 
p merge([1, 1, 3], [2, 2]) 
p merge([], [1, 4, 5]) 
p merge([1, 4, 5], []) 

# LS answer below for reference as is not quite the same as mine. for me, my answer is simpler to follow, although theres does make sense as well

def merge_LS(a1, a2)
  idx2 = 0
  result = []

  a1.each do |v|
    while idx2 < a2.size && a2[idx2] <= v
      result << a2[idx2]
      idx2 += 1
    end
    result << v
  end

  result.concat(a2[idx2..-1])
end

p merge_LS([1, 5, 9], [2, 6, 8]) 
p merge_LS([1, 1, 3], [2, 2]) 
p merge_LS([], [1, 4, 5]) 
p merge_LS([1, 4, 5], []) 

# LS explanation of their solution: The obvious solution is to walk through both arrays simultaneously, keeping track of where you are in each array with appropriate indexes. We'll modify this a tiny bit by using Array#each to iterate through the array, and use an index to track our location in the array2.

# With each iteration of array1, we copy all elements from array2 that are less than or equal to the array1 value, incrementing our index as needed. Note that we need to be careful to not try copying any values from array2 that aren't there. After copying these elements, we then append the current value from array1, and start the next iteration.

# When the loops are done, we may be left with 1 or more items in array2 that were not included in the results. The last step is to make sure they are included.