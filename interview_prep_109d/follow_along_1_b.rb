# given an array of strings made from lowercase letters,
# return an array of all characters that show up in all strings 
# within the given array (including duplicates)
# ie, if a character occurs 3 times in all strings but not 4 times
# you need to include that character three times in the final answer

# MY ATTEMPT

# input: array (of strings)
#   strings only have lowercase letters
# output: array (of strings)
#   all chars that show up in all strings
#   rule: duplicate char the no. of time appears in all strings from input array
#   infer from test case: return empty array if no chars match

# build reference hash with keys as alphabet and values at 0 for all keys
# iterate w each
#   each string into array with chars
#   count each letter of array
#   new hash value is minimum of this count and existing value
# return array from hash of all keys with values greater than 0

def common_chars(string_array)
  alphabet = ('a'..'z').each_with_object ({}) { |el, h| h[el] = 0 }
  first_word_arr = string_array.first.chars
  first_word_arr.each do |char|
    initial_count = first_word_arr.count(char)
    alphabet[char] = initial_count
  end

  new_count = {}

  string_array.each do |string|
    new_count = {}
    temp_arr = string.chars
    temp_arr.each do |char|
      new_count[char] = temp_arr.count(char)
    end

    alphabet.each do |letter, value|
      if temp_arr.include?(letter)
        alphabet[letter] = [value, new_count[letter]].min
      else
        alphabet[letter] = 0
      end
    end
  end
  result_chars = alphabet.select { |k, v| v > 0 }
  result_chars.map { |k, v| (k * v).chars }.flatten
end

# given test cases
p common_chars(%w(bella label roller)) # %w(e l l)
p common_chars(%w(cool lock cook)) # %w(c o)
p common_chars(%w(hello goodbye booya random)) # ['o']
p common_chars(%w(aabbaaaa ccdddddd eeffee ggrrrrr yyzzz)) # []

# this worked but took me almost 35 mins, too long with too many errors before sorted out how to do...# this worked but took me almost 35 mins, too long with too many errors before sorted out how to do...# this worked but took me almost 35 mins, too long with too many errors before sorted out how to do...# this worked but took me almost 35 mins, too long with too many errors before sorted out how to do...# this worked but took me almost 35 mins, too long with too many errors before sorted out how to do...# this worked but took me almost 35 mins, too long with too many errors before sorted out how to do...# this worked but took me almost 35 mins, too long with too many errors before sorted out how to do...# this worked but took me almost 35 mins, too long with too many errors before sorted out how to do...

## video answer below to compare:
# input - an array of lowercase strings
# return - an array of every char that appears in all of the strings
#   if a character appears twice, etc, in each string,
#   the return array should contain two elements of that char

# set chars equal to the characters of the first element (remove the first
#   element from the array)
# iterate thru the characters (with select)
#   iterate thru the words in the array 
#   check if all the words contain the character
#     block should return true
#     remove one of that character from the string 

def common_characters(array)
  array = array.map { |word| word.dup }

  chars = array.shift.chars

  chars.select do |char|
    array.all? { |word| word.sub!("#{char}", '') }
  end
end
