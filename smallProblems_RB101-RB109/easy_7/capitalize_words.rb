# Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

# word_cap('four score and seven') == 'Four Score And Seven'
# word_cap('the javaScript language') == 'The Javascript Language'
# word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

#D/A
# break into substrings by way of Array#split
# iterate over and on each element call String#capitalize
# Array#join to return string

def word_cap(str)
  arr = str.split
  new_arr = arr.map { |word| word.capitalize }
  new_arr.join(' ')
end

p word_cap('four score and seven')
p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# LS had the exact same answer as me, although they did have a secondary more succint method, written below

def word_cap_v2(words)
  words.split.map(&:capitalize).join(' ')
end

p word_cap_v2('four score and seven')

# FURTHER (without string#capitalize method)
# UPPER = ('A'..'Z').to_a
# LOWER = ('a'..'z').to_a

# def word_cap_v3(str)
#   arr1 = str.split
#   arr2 = arr1.map { |word| word.chars }
# end

# return to later
