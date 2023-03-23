# Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.

# E
# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"

# D/A
# 'short' + 'long' + 'short' => "shortlongshort"
# method: could use length or size
# an if/else would work, simpler way to do? # gonna code if/else

# C

def short_long_short(str1, str2)
  str1.length > str2.length ? str2 + str1 + str2 : str1 + str2 + str1
end

p short_long_short("abc", "defgh")
p short_long_short("abcde", "fgh")
p short_long_short("", "xyz")
