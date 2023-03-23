# An array of integers is a SPIRAL if the integers increase to a single max
# value, and then decreases down from there. Write a method that returns
# true if an array is a spiral, else return false.

# input -- array (of integers)
# return -- boolean
# rules:
  # integers greater than 0
  # must increase by at least 1 until max, then decrease by at least one
  # only one max value

# algorithm
  # find the max value of input Array
  # find the index of max value 
  # slice index 1..max value index 
  #   iterate returning false if any elements are not at least greater than by 1 prev index value
  # slice max value index..end of array 
    # iterate returning false if any elements are not at least less than by 1 prev index value
  # last line returns true

def spiral(arr)
  max_int = arr.max
  max_int_idx = arr.index(max_int)

  first_half = arr[0..max_int_idx]
  second_half = arr[max_int_idx..-1]

  1.upto(first_half.size - 1) do |idx|
    return false if first_half[idx] - first_half[idx - 1] < 1 
  end

  1.upto(second_half.size - 1) do |idx|
    return false if second_half[idx] - second_half[idx - 1] >= 0
  end

  true
end

# p spiral([1,2,4,3,2,1])
p spiral([1,2,4,3,2,1]) == true
p spiral([1,2,4,6,4,2,1]) == true
p spiral([0,3,5,4,3,2,1]) == true
p spiral([0,3,5,5,4,3,2,1]) == false
p spiral([1,2,4,6,4,2,4]) == false
p spiral([1,5,4,6,4,2,1]) == false

# took 30 mins. 
# benji provided great feedback about how to present and interview
#   avoid typing while talking
#   is a presentation, is okay to engage with interviewer, they are more
#     than just an observer
#   before run/test code, say exactly what expect to happen
#   test frequently
#   explain what will do in small chunks, then write those chunks (whether algo or in code)
#     to keep interview engaged and to explain clearly
