a = %w[a b c d e]
puts a.fetch(7) #==> (b/c referenced index is outside the array bounds) IndexError
puts a.fetch(7, "beats me") #==> beats me (will return default value bc there is no index 7 element in the array a)
puts a.fetch(7) { |index| index**2 } #==> (b/c is an invalid index, will return..) 49 (7**2 = 7*7)

# info from docs for Array#fetch
# Tries to return the element at position index, but throws an IndexError exception if the referenced index lies outside of the array bounds. This error can be prevented by supplying a second argument, which will act as a default value.

# Alternatively, if a block is given it will only be executed when an invalid index is referenced. Negative values of index count from the end of the array.

# a = [11, 22, 33, 44]
# a.fetch(1) #=> 22
# a.fetch(-1) #=> 44
# a.fetch(4, "cat") #=> "cat"
# a.fetch(100) { |i| puts "#{i} is out of bounds" }
#=> "100 is out of bounds"
