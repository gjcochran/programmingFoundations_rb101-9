# Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

# E
# center_of('I love ruby') == 'e'
# center_of('Launch School') == ' '
# center_of('Launch') == 'un'
# center_of('Launchschool') == 'hs'
# center_of('x') == 'x'

# irb(main):001:0> string = 'I love ruby'
# => "I love ruby"
# irb(main):002:0> string[string.size/2]
# => "e"

# ^ this is easy but only works for odd inputs
# for evens can set string.size/2 to a value, then do a range
# ex. [a-1..a]

def center_of(str)
  mid = str.size/2
  if str.size.odd?
    str[mid]
  else
    str[mid-1..mid]
  end
end

p center_of('I love ruby')

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'

# LS did almost exactly the same as me but rather than writing the else return as str[mid-1..mid], they wrote str[mid - 1, 2] (the 2 refers to extracting 2 characters)
