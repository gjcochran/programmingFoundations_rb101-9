
# find the longest common prefix string amongst array of strings
# return '' if no common prefix
# %w(flower flow flight) -> 'fl'
# all inputs will be lowercase letters

# my answer
# input - array (of lowercase strings)
# output - string
#   empty string if no common prefix
# no questions
# algo:
#   initialize empty match variable
#   iterate thru array
#     match method
#       if nil return empty string
#       else reassign match variable to enumerator.to_s

def common_prefix_fail(array)
  matched = array.first
  1.upto(array.size - 1) do |idx|
    temp = matched.match(array[idx])
    temp.nil? ? (return '') : (matched = temp.to_s)
    p idx
    p matched
  end
  matched
end

# 17 mins to get wrong result because that is not how matched method works...
# new plan, union method on chars

def common_prefix_fail_2(array)
  array = array.map { |str| str.chars }
  union = array.first

  1.upto(array.size - 1) do |idx|
    union = union.intersection(array[idx]) 
  end
  union.join
end
#p common_prefix(%w(flower flow flight)) # 'fl'
#p common_prefix(%w(dog racecar car)) # ''
#p common_prefix(%w(interspecies interstellar interstate)) # 'inters'
#p common_prefix(%w(throne throne)) # 'throne'

# failed.. took another 11 mins and intersection also didnt work because doesnt care 
# about order of elements, only which are shared
# result: 28 mins to not solve a problem
# feedback for self: test purposed algo before starting to code

# redo of problem:
# algo: 
#   compare each element at each index, and select those which are all equal

def common_prefix(array)
  sorted = array.sort_by(&:size)
  shortest = sorted.shift
  selected = shortest.chars

  sorted.each do |string|
    selected = selected.select.with_index { |c, i| c == string[i] }
  end
  
  selected.join
end

p common_prefix(%w(throne dungeon)) # ''
p common_prefix(%w(flower flow flight)) # 'fl'
p common_prefix(%w(dog racecar car)) # ''
p common_prefix(%w(interspecies interstellar interstate)) # 'inters'
p common_prefix(%w(throne throne)) # 'throne'

# took 10 mins, works well.
# but.. bc i took so long the first 2 times.. took me almost 40 mins to solve this problem!

###
# video answer:
# Problem
# find the longest common prefix string in an array of strings
# return the prefix string

# input - array of strings
# output - string

# Data - arrays, strings

# Algorithm
# iterate from 0 to length of the smallest string in the array
#   using the index, check if characters of each string in the array are the same
#   if its the same, add that character to a results array
#   if not, return results array

def common_prefix_example(array)
  result = []
  max_index = array.min_by { |string| string.size }.size
  (0...max_index).each do |index|
    current_char = array[0][index]
    if array.all? { |str| str[index] == current_char }
      result << current_char
    else
      return result.join
    end
  end
  result.join
end
