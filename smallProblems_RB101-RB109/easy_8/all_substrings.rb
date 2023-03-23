# Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

# You may (and should) use the leading_substrings method you wrote in the previous exercise

def leading_substrings_v2(str)
  result = []
  accum = ''
  str.chars.each do |char|
    accum += char
    result << accum
  end
  result
end

# p leading_substrings_v2('abc')
# p leading_substrings_v2('xyzzy')

# E
# substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]

# biggest question: how to return new lines?? if use puts will return nil but wil output on new lines

# attempt 1 
# def substrings(str)
#   result = ''
#   a = str.chars
#   a.each do
#     result += leading_substrings_v2(str).join(' ')
#     str = str[1..-1]
#   end
#   result.split
# end

# p substrings('abcde')

# attempt 2
# def substrings(str)
#   loop do
#     p leading_substrings_v2(str)
#     str = str[1..-1]
#     break if str.size.zero?
#   end
# end

# p substrings('abcde')

#=>
# ["a", "ab", "abc", "abcd", "abcde"]
# ["b", "bc", "bcd", "bcde"]
# ["c", "cd", "cde"]
# ["d", "de"]
# ["e"]
# nil

# attempt 3

def substrings(str)
  result = []
  loop do
    result << leading_substrings_v2(str)
    str = str[1..-1]
    break if str.size.zero?
  end
  result.join(' ').split
end

p substrings('abcde')

# this returns the correct array values, but without the new lines. giving up on new line piece

# LS solution written below (which funnily enough does not print on new lines either... in neither vscode nor irb)

def substrings_2(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings_v2(this_substring))
  end
  results
end

p substrings_2('abcde')

# Ranges constructed using .. run from the beginning to the end inclusively. Those created using ... exclude the end value.
# i dont understand how theyre able to call the each method on the range without converting to an array...
