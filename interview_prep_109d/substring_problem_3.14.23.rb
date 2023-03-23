# Given a string s, return the length of the longest substring between two equal characters, excluding the two characters. If there is no such substring return -1.

# input - String
# return - integer (length of that substring)
# rules 
  # if no characters between matching char, return 0
  # -1 if no equal characters
  # longest substring between 2 equal characters

# algorithm
  # convert string to an Array
  # select with index and assign return, the element that occurs twice
    # if empty, return -1
  # slice based on the two indices i returned

def max_length_between_equal_characters(str)
  array = str.chars
  elements_with_indices = array.map.with_index do |char, idx|
    [char, idx] 
  end
  selected = elements_with_indices.select do |subarray|
    temp_array = elements_with_indices.map(&:first)
    greater_than_one = temp_array.select { |s| temp_array.count(s) > 1 }.first
    return -1 if greater_than_one.nil?
    subarray.include?(greater_than_one)
  end
  array[(selected[0][1] + 1)..(selected[1][1] - 1)].size
end

p max_length_between_equal_characters("acbsewb") == 3
p max_length_between_equal_characters("acbsewba") == 6
p max_length_between_equal_characters("aa") == 0
p max_length_between_equal_characters("cbzxy") == -1

# took 26 mins
