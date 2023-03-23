# input: array
# output: mutate array, reverse elements in place
# cant use Array#reverse!

def reverse!(arr)
  new = []
  arr.each { |el| new.prepend(el) }
  arr.replace(new)
end

p reverse!(%w(a b c d))
p reverse!(%w(a b c d e))

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true

# review: my solution works, although did kind of game the problem by using replace method...
# LS solution below for reference
#
def reverse!_LS(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end
