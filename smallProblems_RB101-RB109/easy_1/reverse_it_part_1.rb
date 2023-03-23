# Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

# PEDAC
# P
# input: string
# output: new string (reverse of input)
# rules: - words of input are reversed (ie not reversing characters/ie words are not spelled backwards, just word placement is changed)

# E
# puts reverse_sentence('Hello World') == 'World Hello' #TRUE
# puts reverse_sentence('Reverse these words') == 'words these Reverse' #TRUE
# puts reverse_sentence('') == '' #TRUE
# puts reverse_sentence('    ') == '' # Any number of spaces results in '' #TRUE

# another ex...
# 4 words -- a cow is jumping
#  0 1    2  3
#  jumping is cow a
#  3       2  1   0

# D
# String#reverse would reverse the characters, not the words

# need to convert to an array so that can use Array#reverse to reverse the words
# 'a cow is jumping'.split
# => ["a", "cow", "is", "jumping"]

# A

# split a string so that return an array with separated words
# reverse the array
# join the array so that is a string again

# C

def reverse_sentence(str)
  str.split.reverse.join(" ")
end

# test
puts reverse_sentence("a cow is jumping")
puts reverse_sentence("Hello World") == "World Hello"
puts reverse_sentence("Reverse these words") == "words these Reverse"
puts reverse_sentence("") == ""
puts reverse_sentence("    ") == ""
