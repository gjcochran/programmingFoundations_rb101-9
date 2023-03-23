# In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, as well as characters that were neither of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

# E
# letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
# letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
# letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

# 'abCdef 123'
# 10 characters (including space)
# 5 lowercase
# 1 uppercase
# 4 neither (3 numbers + 1 space)

# D/A
# input.chars
# iterate over each char
# regex match for [A-Z] and for [a-z]
    # irb(main):005:0> /[A-Z]/.match?('a')
    # => false
    # irb(main):006:0> /[A-Z]/.match?('A')
    # => true
# based on which matches with, add to running totals
# percentages = (totals / input.size.to_f) * 100
# put in hash to return

# above idea will work, i believe, but is not simple.. going to run with, test and then possibly refactor

def letter_percentages(string)
  lower = 0
  upper = 0
  neith = 0

  total = string.size.to_f
  percentages = {}

  string.chars.each do |char|
    if /[A-Z]/.match?(char)
      upper += 1
    elsif /[a-z]/.match?(char)
      lower += 1
    else
      neith += 1
    end
  end
  percentages[:lowercase] = (lower/total)*100
  percentages[:uppercase] = (upper/total)*100
  percentages[:neither] = (neith/total)*100
  percentages
end

p letter_percentages('abCdef 123')

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

# WORKS! LS answer was fairly similar, pasted below for reference...

# def letter_percentages(string)
#   counts = {}
#   percentages = {}
#   characters = string.chars
#   length = string.length

#   counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
#   counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
#   counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }

#   calculate(percentages, counts, length)

#   percentages
# end

# def calculate(percentages, counts, length)
#   percentages[:lowercase] = (counts[:lowercase] / length.to_f) * 100
#   percentages[:uppercase] = (counts[:uppercase] / length.to_f) * 100
#   percentages[:neither] = (counts[:neither] / length.to_f) * 100
# end