# Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the same number of elements.

# E
# interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

#D/A
# idea gen:
# - set arr1 to even elements of new array and arr2 to odd els
# - concat then iterate
# choosing simplest option of empty array and looping


def interleave(arr1, arr2)
  
  arr3 = []
  a = 0
  b = 0
  c = 1

  loop do
    arr3[a] = arr1[b]
    arr3[c] = arr2[b]
    a += 2
    c += 2
    b += 1
    break if b == arr1.size
  end

  arr3

end

p interleave([1, 2, 3], ['a', 'b', 'c'])
p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# LS option below (used each_with_index)

def interleave2(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index] # didn't know that could push two items in one iteration!
  end
  result
end

p interleave2([1, 2, 3], ['a', 'b', 'c'])
p interleave2([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# FURTHER

def interleave3(arr1, arr2)
  arr3 = arr1.zip(arr2)
  arr3.flatten
end

p interleave3([1, 2, 3], ['a', 'b', 'c'])
