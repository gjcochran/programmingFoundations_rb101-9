# Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

# E
# rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# rotate_array(x) == [2, 3, 4, 1]   # => true
# x == [1, 2, 3, 4]                 # => true

# D/A
# for ref
# irb(main):001:0> x = [1, 2, 3, 4]
# => [1, 2, 3, 4]
# irb(main):002:0> x.rotate
# => [2, 3, 4, 1]

# each index is subtracted by 1
# ie arr[1] --> arr[0]

def rotate_array(arr)
  result = []
  counter_a = arr.size - 1
  counter_b = 0
  loop do
    result[counter_a] = arr[counter_b]
    counter_a -= 1
    counter_b -= 1
    break if counter_a < 0
  end
  result
end

p rotate_array([7, 3, 5, 2, 9, 1])
p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']
x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

# LS solution was incredibly simple, written below

def rotate_array_v2(arr)
  arr[1..-1] + [arr[0]]
end
p rotate_array_v2([7, 3, 5, 2, 9, 1])

# irb(main):006:0> arr = [7, 3, 5, 2, 9, 1]
# => [7, 3, 5, 2, 9, 1]
# irb(main):007:0> arr[1..-1]
# => [3, 5, 2, 9, 1]
# irb(main):008:0> arr[0]
# => 7
# irb(main):009:0> [arr[0]]
# => [7]
# irb(main):010:0> arr[1..-1] + [arr[0]]
# => [3, 5, 2, 9, 1, 7]

# irb(main):011:0> str = "blue"
# => "blue"
# irb(main):012:0> str[1..-1]
# => "lue"
# irb(main):013:0> str[0]
# => "b"
# irb(main):014:0> str[1..-1] + str[0]
# => "lueb"