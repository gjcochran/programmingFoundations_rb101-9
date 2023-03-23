# use rotation method from previous exercise (write from memory)
# input: 2 integers (int, n)
# output: integer -> rotate last n digits of int to right

# A
# int.to_s.chars
# divide into two sub arrays
# mid = 0-n ... [0..mid-1] && [mid..-1]
# pass [mid..-1] into rotate_array method

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(int, n)
  arr = int.to_s.chars
  mid = 0 - n
  keep = arr[0..mid-1]
  transfrom = arr[mid..-1]

  result = keep + rotate_array(transfrom)
  result.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

# review: good.
# LS answer used slice to replace only the [-n..-1]

def rotate_rightmost_digits_LS(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end
