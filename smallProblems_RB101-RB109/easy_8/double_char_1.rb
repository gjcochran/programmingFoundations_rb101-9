# Write a method that takes a string, and returns a new string in which every character is doubled.

# E
# repeater('Hello') == "HHeelllloo"
# repeater("Good job!") == "GGoooodd  jjoobb!!"
# repeater('') == ''

# D/A
# will spit to array using .chars
# iterate using map and multiply each char by 2 then add to a new array
# join the new array
# irb(main):001:0> 'h' * 2
# => "hh"

def repeater(str)
  arr = str.chars
  arr.map { |el| el * 2 }.join
end

p repeater('Hello')
p repeater("Good job!")
p repeater('') == ''

# didnt even need to convert to an array! couldve used the String#each_char method, as demonstrated by LS solution below
# https://ruby-doc.org/core-3.1.2/String.html#method-i-each_char

# def repeater(string)
#   result = ''
#   string.each_char do |char|
#     result << char << char
#   end
#   result
# end
