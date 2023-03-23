=begin
Write a function that will return the count of distinct case-insensitive alphabetic characters 
and numeric digits that occur more than once in the input string. The input
string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

Example
"abcde" -> 0 # no characters repeats more than once
"aabbcde" -> 2 # 'a' and 'b'
"aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
"indivisibility" -> 1 # 'i' occurs six times
"Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
"aA11" -> 2 # 'a' and '1'
"ABBA" -> 2 # 'A' and 'B' each occur twice
=end

# input - string
# return - integer
#   represents number of characters that repeat more than once
# rules
#   case-insensitive
#   only alphabetics and numerics
#   if empty string input, return 0

# algorithm
#   split string into array of characters
#     downcase first so that is case-insensitive
#   iterate over this array and select all characters which occur more than once
#   remove duplicates from selected array
#   return number of elements in selected array

def duplicate_count(string)
  characters = string.downcase.chars
  selected = characters.select { |char| characters.count(char) > 1 }
  selected.uniq.size
end

p duplicate_count("") == 0
p duplicate_count("abcde") # == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2

# 7 mins
