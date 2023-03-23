# Given an unordered array and the information that exactly one value in the array occurs twice (every other value occurs exactly once), how would you determine which value occurs twice? Write a method that will find and return the duplicate value that is known to be in the array.

# find_dup([1, 5, 3, 1]) == 1
# find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
#           38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#           14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
#           78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
#           89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
#           41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
#           55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
#           85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
#           40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
#           7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73

# irb(main):001:0> [1, 5, 3, 1].uniq
# => [1, 5, 3]
# irb(main):002:0> p [1, 5, 3, 1].uniq
# [1, 5, 3]
# => [1, 5, 3]

# https://ruby-doc.org/core-3.1.2/Array.html#method-i-difference # though would work but doesnt return duplicate values, only totally different values

# idea...
# compare input array to input_array.uniq array. 
# first sort both arrays
# then compare each array at same indices and return el that is not equal

def find_dup(arr)
  arr.sort!
  unique_arr = arr.uniq
  result = 0

  arr.each_with_index do |val, ind|
    if val != unique_arr[ind]
      result += val
      break
    end
  end
  result
end

p find_dup([1, 5, 3, 1])
p find_dup([1, 5, 3, 1]) == 1
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73

# mine worked well, but wasn't simple. LS was much more direct using #find method, typed below

def find_dup_v2(arr)
  arr.find { |el| arr.count(el) == 2 }
end

p find_dup_v2([1, 5, 3, 1])