# use docs for ruby 2.3.0

a = [5, 9, 3, 11]
puts a.min
# 3
#=> nil

# Find the documentation for the #min method and change the above code to print the two smallest values in the Array.

puts a.min(2)
# 3
# 5

# docs pasted below
# min → obj
# min {| a,b | block } → obj
# min(n) → array
# min(n) {| a,b | block } → array
# Returns the object in enum with the minimum value. The first form assumes all objects implement Comparable; the second uses the block to return a <=> b.

a = %w[albatross dog horse]
a.min #=> "albatross"
a.min { |a, b| a.length <=> b.length } #=> "dog"
# If the n argument is given, minimum n elements are returned as an array.

a = %w[albatross dog horse]
a.min(2) #=> ["albatross", "dog"]
a.min(2) { |a, b| a.length <=> b.length } #=> ["dog", "horse"]
