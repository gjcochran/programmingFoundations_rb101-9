# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.

# input - string
# return - string (one character)
# rules:
#   case insensitive
#   spaces count
#   return character that is least common
#     if multiple have same count, return character that appears first in input string
# no questions

# algorithm
#   store results in hash
#   split into array of character
#   iterate through array with duplicates removed
#     store in hash
#       key is character  
#       value is character count (case-insensitive) (ie integer)
#   find minimum by value
#     first returned will be the character which appeared first, as
#       that character would have been pushed to the hash first

def least_common_char(string) 
  results = Hash.new(0)
  array = string.downcase.chars
  array.uniq.each do |char|
    results[char] = array.count(char)
  end
  results.min_by { |k, v| v }.first
end

# Examples:

p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'

# The tests above should print "true".

## solved in 13 mins.
