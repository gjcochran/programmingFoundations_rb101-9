# Write a method that takes one argument, a string containing one or more words, and returns the given string with words that contain five or more characters reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

# PEDAC
# input: string with one or more words
# output: input string with only words with > 4 characters reversed
# rules
# string is only letters and spaces
# words wont have spaces (only spaces between words)

# questions... does map work on a string? ... if i convert to an array, then reverse method wont reverse the characters...

# E
# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# D
# map method
# for each word, if statement
# if > 5 characters (determine using size method)
# reverse method on word
# implicit else is to return the word as is

# C

def reverse_words(str)
  arr = str.split

  arr.map { |word| word.reverse! if word.size > 4 }

  arr.join(" ")
end

#test
puts reverse_words("Professional")
puts reverse_words("Walk around the block")
puts reverse_words("Launch School")

# mine worked, note that LS achieved same result with a similar solution using each method and a new empty array, pasted below

# def reverse_words(string)
#   words = []

#   string.split.each do |word|
#     word.reverse! if word.size >= 5
#     words << word
#   end

#   words.join(' ')
# end
