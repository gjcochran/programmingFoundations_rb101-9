# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

#  E
# >> Please write word or multiple words:
# walk
# >> There are 4 characters in "walk".

# >> Please write word or multiple words:
# walk, don't run
# >> There are 13 characters in "walk, don't run".

# D
# String#size will work well (or String#length), but need to account for spaces as those count as characters in this method, but not in examples or prompt
# option 1: could convert to an array, run select on that array to return a new array... and then convert back a string
# option 2: in ruby docs for https://ruby-doc.org/core-3.1.2/String.html#method-i-split, does list a regex option to remove the whitespace (%r{\s*}).

# option 1
puts ">> Please write word or multiple words:"
str = gets.chomp
arr = str.chars.select { |c| c if c != " " }
num_chars = arr.join.size
puts "There are #{num_chars} characters in '#{str}'"

# option 2
# puts ">> Please write word or multiple words:"
# str = gets.chomp

# num_chars = str.split(/\s*/).join.size
# puts "There are #{num_chars} characters in '#{str}'"

## both my options worked, and LS still came up with a simpler option by using the String#delete method... pasted below
# print 'Please write word or multiple words: '
# input = gets.chomp
# number_of_characters = input.delete(' ').size
# puts "There are #{number_of_characters} characters in \"#{input}\"."
