# input: array of integers
# output: input array bubble sorted
# bubble sort meaning: compare each el and next_idx_el, sort them
# smallest to largest, then compare next els
# repeat for entire array until cannot sort any more
# returns an array that is sorted as if used method Array#sort!

def bubble_sort!(arr) 
  loop do
    start = arr.clone
    arr.each_with_index do |e, i|
      arr[i], arr[i+1] = arr[i+1], arr[i] if ((arr[i] <=> arr[i+1]) == 1)
    end
   # p "start is #{start}"
   # p "arr is #{arr}"
    break if start == arr
  end
  arr
end

array1 = [5, 3]
bubble_sort!(array1)
p array1 == [3, 5]

p '------------------'

array2 = [6, 2, 7, 1, 4]
bubble_sort!(array2)
p array2 == [1, 2, 4, 6, 7]
p array2

p '------------------'

array3 = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array3)
p array3 == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

# good. LS answer break is different in that they only set a variable to true if they make changes

def bubble_sort_LS(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end

    break unless swapped
  end
end
