# Write a method named include? that takes an Array and a search value as arguments. This method should return true if the search value is in the array, false if it is not. You may not use the Array#include? method in your solution.

# include?([1,2,3,4,5], 3) == true
# include?([1,2,3,4,5], 6) == false
# include?([], 3) == false
# include?([nil], nil) == true
# include?([], nil) == false

# attempt 1 
# def include?(arr, val)
#   arr.find { |el| el == val } ? true : false
# end

# p include?([1,2,3,4,5], 3)
# p include?([1,2,3,4,5], 6)
# p include?([1,2,3,4,5], 3) == true
# p include?([1,2,3,4,5], 6) == false
# p include?([], 3) == false
# p include?([nil], nil) == true
# p include?([nil], nil) # works for every test except this one!
# p include?([], nil) == false

# def include?(arr, val)
#   arr.find do |el| 
#     p val
#     p el
#     if el == val 
#       true 
#     else 
#       false
#     end
#   end
# end
# p include?([nil], nil) == true

# attempt 2

# def include?(arr, val)
#   p val
#   arr.select do |el| 
#         p el
#         p el == val
#         if el == val 
#           true 
#         else 
#           false
#         end
#       end
# end

# # p include?([1,2,3,4,5], 3)
# # p include?([1,2,3,4,5], 6)
# # p include?([1,2,3,4,5], 3) == true
# p include?([1,2,3,4,5], 6) == false
# # p include?([], 3) == false
# # p include?([nil], nil) == true
# # p include?([nil], nil) 
# # p include?([], nil) == false

# COULD NOT UNDERSTAND WHY MINE WEREN'T WORKING AND GAVE UP.

# LS solutions below

def include_v2(arr, val)
  !!arr.find_index(val)
end

p include_v2([1,2,3,4,5], 3) == true
p include_v2([1,2,3,4,5], 6) == false
p include_v2([], 3) == false
p include_v2([nil], nil) == true
p include_v2([], nil) == false

def include_v3(arr, val)
  arr.each { |el| return true if val == el }
  false
end

# explanation 
# The first method uses Array#find_index to scan the array for the first element that has the specified value. find_index returns the index number of the found element, which will always have a truthy value, or nil if no such element is present. We then use !! to force the return value to true or false in accordance with the implied promise of the ? in include?.

# The second method does essentially the same thing, but it uses each instead of find_index. This takes a little bit more work, since we are explicitly returning false if the value is not found.

