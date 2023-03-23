# inputs: array, search value
# output: boolean -> true if search value is in the array
# rules: cannot use include? method

# A 
# good use case for the select method
# if return array is empty, false

def include?(arr, search)
  result = arr.select { |el| el == search }
  result.empty? ? false : true 
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
p include?([1,2,3,4,5], 3)
p include?([1,2,3,4,5], 6)
p include?([], 3)

# good. note that had to include false as an option in ternary, otherwise would return nil if not true
# also to note that .any? didnt work as [nil].any? is false... method doesnt recognize nil as anything bc isnt truthy
#
# LS answers were both clever, below:

def i_LS1(a, v)
  !!a.find_index(v)
end

def i_LS2(a, v)
  a.each { |e| return true if v == e }
  false
end

