# The following code:
def my_method(array)
  if array.empty?
    []
  elsif
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

# is expected to print:
# []
# [21]
# [9, 16]
# [25, 36, 49]

# Find and fix the bug, then explain why the buggy program printed the results it did.

# is printing...
# []
# nil
# nil
# nil

# work below

def my_method_v2(array)
  if array.empty?
    []
  elsif array.size > 1
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method_v2([])
p my_method_v2([3])
p my_method_v2([3, 4])
p my_method_v2([5, 6, 7])

# the elsif statement does not contain a condition! 
# fixed (note that LS had some solution as i did)

