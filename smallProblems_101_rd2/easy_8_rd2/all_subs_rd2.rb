# input: string
# output: array of strings -> all potential permutations
# advised to use leading_substrings method which will rewrite from memory
# A
# can put leading_substrings into a loop, shifting first char off arr on each iteration

def leading_subs(str)
  result = []
  arr = str.chars
  arr.each_index do |i|
    result << arr[0..i].join
  end
  result
end

def substrings(str)
  arr = []
  string = str
  loop do
    arr << leading_subs(string)
    string.slice!(0)
    break if string.empty?
  end
  arr.flatten 
end

p substrings('abcde')
p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

# good. works well.
# LS solution used each iteration rather than a loop 
# they simply increased the starting index by 1 within the iteration each time
# and used string[index..-1] as the argument for first method, clever.

def substrings_LS(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end
