# input: array
# output: pair of nested arrays
#           first and second half of input array
#           mid element in first half if input.size.odd?

def halvsies(arr)
  half = arr.size / 2
  arr.size.odd? ? [arr[0..half], arr[half+1..-1]] : [arr[0..half-1], arr[half..-1]]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

# works.
# LS answer written below

def h_LS(a)
  mid = (a.size / 2.0).ceil
  first = a.slice(0, mid)
  second = a.slice(mid, a.size - mid)
  [first, second]
end

# note that use float and ceil to account for odd? piece to problem
# slice args ... a.slice(starting_index, length)
