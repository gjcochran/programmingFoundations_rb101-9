=begin
Complete the function scramble(str1, str2) that returns true if a portion
of str1 characters can be rearranged to match str2, otherwise returns false.

Notes:

Only lower case letters will be used (a-z). No punctuation or digits will be included.
Performance needs to be considered.
=end

# inputs - 2 strings
# return - boolean
# rules:
#   only lowercase alphabetic characters included in input strings
#   only a portion of str1 needs to be the same as str2, when rearragend
#     ie str1 can have extraneous characters

# algorithm
#   separate each string into arrays of characters and tally
#     the character count of each letter
#       tally will return a hash with letter as key and letter count as value
#   iterate over the str2 tally hash
#     return false unless str1 tally hash includes the key and at least as great of a value

def scramble(str1, str2)
  tally_str1 = str1.chars.tally
  tally_str2 = str2.chars.tally
  tally_str2.each do |letter, letter_count|
    if (tally_str1[letter] != nil) && (tally_str1[letter] >= letter_count) 
      next
    else
      return false
    end
  end
  true
end

p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('kateass', 'steaks') == true

## 20 mins

## cwars answer so clever! have to remember to use all? method
  # `str2.chars.uniq.all? { |x| s2.count(x) <= s1.count(x) }`


