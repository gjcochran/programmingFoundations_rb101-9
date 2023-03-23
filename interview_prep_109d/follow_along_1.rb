# given a non-empty string check if it can be constructed by taking
# a substring of it and appending multiple copies of the substring
# together. input string only lowecase english letters

# Examples:
# input: 'abab'
# output: true
#
# input: 'aba'
# output: false

# P
# input: string
# output: boolean
# Rules:
#   entire string is composed of repeating substrings

# A
# each_slice method

def rep_sub(str)
  1.upto(str.size / 2) do |i|
    temp = str.chars.each_slice(i).to_a
    return true if temp.uniq.size == 1
  end
  false
end

p rep_sub('abab') # true
p rep_sub('aba') # false
p rep_sub('aabaaba') # false
p rep_sub('abaababaab') # true
p rep_sub('abcabcabcabc') # true

# feedback for self: 
# initially tried chunk method, then had to use docs to find each_slice (only took 
# ~1 min as knew an enum method that did this exists)... but not allowed docs in interview

##
# video recording below...

# argument - string
# return true or false
#   rules- the entire string is a repeating substring

# option 1
#   create an array of substrings that are in length
#     the factors of the string (up to half the string length)
#   for each substring multiply it by the length of the string
#     divided by the length of the substring
#   check if that substring multiplication is equal to the string

def repeated_substring_pattern(string)
  substrings = []
  1.upto(string.size / 2) do |num|
    if (string.size % num == 0)
      substrings << string[0, num]
    end
  end

  substrings.each do |substring|
    multiplier = string.size / substring.size
    return true if substring * multiplier == string
  end
end
