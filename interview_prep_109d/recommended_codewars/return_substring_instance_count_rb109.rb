=begin
Complete the solution so that it returns the number of times the search_text is found within the full_text.

Usage example:

solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
solution('aaabbbcccc', 'bbb') # should return 1
=end

# input - two strings
#   first is text to search, second is what to search by
# return - integer
#   represents number of times 2nd string occurs in first string
# is the string searched by transition to new characters?
#   ie what to do with ('aabbbdec', 'bb')
#     should this return 0, 1, or 2??

# algorithm
#  convert string to array of characters which iterate over
#   and return an array of string chunks in which substrings that are the same are combined
#   select from this array all joined subarrays which are the same as the search_text
#   return size of selected array


def solution(full_text, search_text)
  chunked = full_text.chars.chunk_while { |char1, char2| char1 == char2 }.to_a 
  selected = chunked.select { |subarray| subarray.join == search_text}
  selected.size
end

p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1

# 15 mins
# worked, but to note that the last time i solved this problem i did it much quicker/simpler
# `full_text.scan(search_text).size`
