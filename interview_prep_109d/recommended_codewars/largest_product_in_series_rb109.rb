=begin
Complete the greatestProduct method so that it'll find the greatest product of five
consecutive digits in the given string of digits.

For example:

greatestProduct("123834539327238239583") // should return 3240
The input string always has more than five digits.
=end

# input - string of digits 
# return - integer
#   represents ... largest potential product of 5 consecutive digits as substring
# rules:
#   input string always has at least 6 digits

# algorithm
#   convert to an integer
#   split into an array using digits.reverse
#   initialize storage/results array
#   iterate from index 0 to the 5th to last index
#     for each index, take slice from that index to 5 indices past
#       ie. [0..4]
#   store product of each slice in results array
#   find and return the max value contained in the results array

def greatest_product(num_str)
  num_arr = num_str.to_i.digits.reverse
  results = []
  0.upto(num_arr.size - 5) do |idx|
    results << num_arr.slice(idx, 5).reduce(:*)
  end
  results.max
end


p greatest_product("123834539327238239583") #3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0

# 15 mins

# could have used Enumerable#each_cons(5) .. cwars clever answer
