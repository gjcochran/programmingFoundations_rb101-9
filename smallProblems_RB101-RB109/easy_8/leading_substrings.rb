# Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.

# E

# leading_substrings('abc') == ['a', 'ab', 'abc']
# leading_substrings('a') == ['a']
# leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

def leading_substrings(str)
  result = []
  accum = ''
  counter = 0
  arr = str.chars
  loop do
    accum += arr[counter]
    result << accum
    counter += 1
    break if counter == arr.size
  end
  result
end

p leading_substrings('abc')
p leading_substrings('xyzzy')

def leading_substrings_v2(str)
  result = []
  accum = ''
  str.chars.each do |char|
    accum += char
    result << accum
  end
  result
end

p leading_substrings_v2('abc')
p leading_substrings_v2('xyzzy')

# LS answer below

# def leading_substrings(string)
#   result = []
#   0.upto(string.size - 1) do |index|
#     result << string[0..index]
#   end
#   result
# end