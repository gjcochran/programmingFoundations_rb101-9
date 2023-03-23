# find length of longest substring in given string which is same in reverse
# aka longest palindrome substring

# input - string
# output - integer
# rules:
#   spaces dont count towards palindrome
#   if single letter, return 1
#   if empty string, return 0
# question: what about multiple words?? strip spaces? only eval one word at a time?
#   as cant verify, will assume that only eval one word at a time
#   does case matter?

# algo
#   split into array of strings (by spaces, ie divide words)
#   iterate thru each string
#   then...
#   nested iteration 0..str.size
#     then i..str.size
#     slice each iteration and push joined to eval array
#  iterate thru eval array (select)
#    word == word.reverse 
#  return length of longest selected word 

def longest_palindrome(str)
  return 0 if str.empty?
  array = str.split 
  eval_array = []
  array.each do |word|
    temp = word.chars
    (0...temp.size).each do |left_idx|
      (left_idx...temp.size).each do |right_idx|
        eval_array << temp[left_idx..right_idx]
      end
    end
  end
  selected = eval_array.select { |sub| sub == sub.reverse }
  selected.max_by(&:size).size
end

p longest_palindrome('a')
p longest_palindrome('aa')
p longest_palindrome('baa')
p longest_palindrome('aab')
p longest_palindrome('baabcd')
p longest_palindrome('baablkj12345432133d')
p longest_palindrome('i like racecars that go fast')
p longest_palindrome('')

# worked .. took ~15 mins
# definitely is not the simplest method, would be curious about poor performance
#  with longer inputs, but does pass all given tests 
#  note that did forget about edge case to return 0 if input is empty until video! so wouldve lost points

###
## video answer:

# input: string
# output: integer
# goal: get the length of the largest palindrome substring
# rules:
#   if string is empty return 0
# algo -- not going to both writing what video person wrote as wasnt written in very clear manner..

def longest_pali_ex(str)
  substrings = find_all_substrings(str)
  palindromes =  palindromes(substrings)

  max_length = 0
  palindromes.each do |palindrome|
    if palindrome.length > max_length
      max_length = palindrome.length
    end
  end
  max_length
end

def find_all_substrings(str)
  results = []
  0.upto(str.length - 1) do |current_idx|
    current_idx.upto(str.length - 1) do |second_idx|
      results << str[current_idx..second_idx]
    end
  end
  results
end

def palindromes(substrings)
  substrings.select do |substr|
    substr == substr.reverse
  end
end
