# without using Array#reverse
# reverse elements of input array
# in contrast to previous problem, do not mutate the original array
# can use first half of last problem, without #replace
# from memory

def reverse(arr)
  new = []
  arr.each { |el| new.prepend(el) }
  new
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true

# good. LS solution uses the reverse_each method and shovels all els to a new array 
