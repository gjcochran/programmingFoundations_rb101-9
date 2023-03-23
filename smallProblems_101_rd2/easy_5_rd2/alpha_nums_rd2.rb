# input: Array of integers - b/t 0..19
# output: Array of integers, sorted based on english word of num
# ex. 19 -> nineteen

# D/A - slow way but reliable would be hash 0 > 'zero' ...
# not sure how else i would do this so will type out hash.
# then, iterate over input array and replace nums with hash key/value
# then sort
# then select only the ints 

def alphabetic_number_sort(arr)
  hash = {
    0 => :zero,
    1 => :one, 
    2 => :two,  
    3 => :three, 
    4 => :four, 
    5 => :five,
    6 => :six,
    7 => :seven,
    8 => :eight,
    9 => :nine,
    10 => :ten,
    11 => :eleven, 
    12 => :twelve, 
    13 => :thirteen, 
    14 => :fourteen,
    15 => :fifteen,
    16 => :sixteen,
    17 => :seventeen,
    18 => :eighteen,
    19 => :nineteen
  }

  result = arr.map { |n| hash.assoc(n) }
  result = result.map { |sub| sub[0], sub[1] = sub[1], sub[0] }
  result.sort.map { |sub| sub[1] }
end

p alphabetic_number_sort((0..19).to_a)
p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

# REVIEW: works but isn't simple
# LS answer very simple, impressed
#
NUMBER_WORDS = %w(zero one two three four
                  five six seven eight nine
                  ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort_LS(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end
