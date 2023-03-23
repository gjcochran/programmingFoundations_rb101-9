=begin
For a given nonempty string s find a minimum substring t and the maximum number
k, such that the entire string s is equal to t repeated k times.

The input string consists of lowercase latin letters.

Your function should return :

an array [t, k] (in Ruby and JavaScript)
Example #1:

for string

s = "ababab";
the answer is

("ab", 3)
Example #2:

for string

s = "abcde"
the answer is

("abcde", 1)
because for this string "abcde" the minimum substring t, such that s is t repeated k times, is itself.
=end

# input - string
# return - array
#   2 elements
#     minimum potential repeatable substring
#     num of times that substring is repeated in the string
# rules:
#   only lowercase alphabetic letters in input
#   string will not be empty
# no questions

# algorithm
#   initialize results array variable
#   iterate from index 0 up to the last index
#     on each index
#       slice within the scan method from 0..index
#       scan will only select elements that match given regex argument
#         use string interpolation within regex
#       join returned array and compare to input string
#         if truthy, then push to results 
#    ... now will have in results 
#       subarrays which are repeatable substrings of size number of times that repeat
#   evaluate results array for largest size subarray (ie subarray with most elemetns)
#     convert this subarray to [substring, times repeated]

def repeated_substring(string)
  results = []
  0.upto(string.size - 1) do |idx|
    substrings = string.scan(/#{string[0..idx]}/)
    results << substrings if substrings.join == string
  end
  repeated = results.max_by(&:size)
  [repeated.first, repeated.size]
end

p repeated_substring('ababab')
p repeated_substring('abcde')

# took ~ 20-25 mins
