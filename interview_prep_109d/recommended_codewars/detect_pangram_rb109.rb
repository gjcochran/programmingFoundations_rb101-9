=begin
A pangram is a sentence that contains every single letter of the alphabet at least once.
  For example, the sentence "The quick brown fox jumps over the lazy dog"
is a pangram, because it uses the letters A-Z at least once (case is irrelevant).

Given a string, detect whether or not it is a pangram. Return True
if it is, False if not. Ignore numbers and punctuation.
=end

# input - string
# return - boolean
# rules:
#   ignore numbers and punctuation in string, only focus on alphabetics
#   case irrelevant
#   true if string contains each letter of alphabet at least once
# no questions

# algorithm
#   downcase input string
#  split input string into an array that only contains alphabet letters
#    use scan method
#   use a count method (tally) to return hash with count of each letter 
#   if the total key/value pairs returned is 26, return true

def pangram?(string)
  letters = string.downcase.scan(/[a-z]/)
  letters.tally.size == 26
end

p pangram?('The quick brown fox jumps over the lazy dog')
p pangram?('The quick brown fox jumps over the lazy? dog')
p pangram?('not a pangram')

# 8 mins
