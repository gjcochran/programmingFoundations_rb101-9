# Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

# E
# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]

# C

def halvsies(arr)
  a = arr.map(&:to_s)
  result = []
  left = []
  right = []
  a.each_with_index do |val, ind|
    if a.size.odd?
      if ind <= a.size / 2
        left << val
      else
        right << val
      end
    else
      if ind < a.size / 2
        left << val
      else
        right << val
      end
    end
  end
  result << left
  result << right
  result.map { |sub| sub.map(&:to_i) }
end

p halvsies([1, 2, 3, 4])
p halvsies([1, 5, 2, 4, 3])
p halvsies([5])
p halvsies([])

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

# wow, LS answer was way different, used slice and ceil methods, written below

def halvsies_v2(arr)
  mid = (arr.size / 2.0).ceil
  left = arr.slice(0, mid)
  right = arr.slice(mid, arr.size - mid)
  [left, right]
end

p halvsies_v2([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies_v2([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies_v2([5]) == [[5], []]
p halvsies_v2([]) == [[], []]

# LS explanation: "Our task is to split an array into two pieces, a first and second half. We first get the middle, which is more exactly the size of the first half, by dividing the original array's size by two. If the original array is odd in size, then the call to ceil will account for that, making the first half larger than the second by one.

# To create both halves, the Array#slice method is used. Here slice takes two arguments: the first one is the starting index and the second one is the length of the slice. For the second half, we can use our middle value as the starting index and specify a length that includes any remaining elements left in the original array after we removed the first half.

# Finally, our halvsies array is created by specifying our two halves as the sole elements of a new array."