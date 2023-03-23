# input: array (w one data type)
# output: array (sorted input array)
# rules: cant use sort method
# instead: recursion... break input array into subarray then..
# .. recombine subarrays in sorted order

def merge(a1, a2)
  arr = a1.concat(a2)
  result = []
  (arr.min).upto(arr.max) do |i|
    arr.each { |el| result << el if el == i }
  end
  result
end

def merge_sort(arr)
#  unless arr.size == 1
#  while arr.size > 1
    l1 = arr.slice(0, arr.size/2)
    l2 = arr.slice(arr.size/2, arr.size)
  l1 = merge_sort(l1) until l1.size == 1
    l2 = merge_sort(l2)
    p "l1 #{l1}"
    p "l2 #{l2}"
  #else
   # merge(l1, l2)
#  end
end

p merge_sort([9, 5, 7, 1])

# FAILED! even with pseduocode couldnt get correct... 
# answer typed out in 'merge_sort_answer.rb'
