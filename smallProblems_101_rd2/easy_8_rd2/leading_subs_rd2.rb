# input: string
# output: array of strings -> substring combinations of input string

# A
# this is nearly identical problem to the sum_of_sums challenge
# the biggest difference is that cannot iterate over a string with each 
# therefore have to split string into array using chars
# will solve in similar manner with each_index and []
# will do a second version as challenge with upto and slice

def leading_substrings(str)
  result = []
  arr = str.chars
  arr.each_index do |i|
    result << arr[0..i].join
  end
  result
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

def leading_v2(str)
  result = []
  arr = str.chars
  1.upto(arr.size) do |i|
    result << arr.slice(0, i).join
  end
  result
end

p leading_v2('abc') == ['a', 'ab', 'abc']
p leading_v2('a') == ['a']
p leading_v2('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# review: both solutions work well.
# LS answer if actually a hybrid of the 2... using upto and [] methods
# although notably LS didn't chars input string, showing that this step was not necessary

def leading_substrings_LS(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end
