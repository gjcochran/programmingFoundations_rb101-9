# input: array 
# output: array (only index.even? elements of input array)

def oddities(arr)
  arr.select.with_index { |el, i| i.even? }
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

# good, easy. LS answer below for reference (more manual, uses while loop)
# very confusing to call it odd elements... when in fact are at even indices...

def oddities_LS(array)
  odd_elements = []
  index = 0
  while index < array.size
    odd_elements << array[index]
    index += 2
  end
  odd_elements
end
