# PROMPT:
# input: two strings
# determine longer string
# output: shortlongshort

# D/A 
# size
# concatenation

def short_long_short(str1, str2)
  if str1.size < str2.size
    str1 + str2 + str1
  else
    str2 + str1 + str2
  end
end

p short_long_short('abc', 'defgh')
p short_long_short('abcde', 'fgh')
p short_long_short('', 'xyz')

# good.
