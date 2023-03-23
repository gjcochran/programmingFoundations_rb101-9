# If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

# Note that you do not have to handle multiple 0s.

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate(num, n)
  all_digits = num.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

# understand the problem

# p rotate(735291, 2)
# p rotate_array(735291.to_s.chars)
# p rotate(735291, 6)

# p input_num = 735291
# p n = input_num.to_s.size
# p rotation1 = rotate(735291, n) 
# p rotation1 == 352917
# p rotation2 = rotate(rotation1, n-1) 
# p rotation2 == 329175
# p rotation3 = rotate(rotation2, n-2) 
# p rotation3 == 321759
# p rotation4 = rotate(rotation3, n-3) 
# p rotation4 == 321597
# p rotation5 = rotate(rotation4, n-4) 
# p rotation5 == 321579

# code

def max_rotation(input)
  n = input.to_s.size
  result = input
  loop do
    result = rotate(result, n)
    n -= 1
    break if n == 0 # could also write n == 1 
  end
  result
end

p max_rotation(735291)
p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

# works, LS answer similar but uses downto method to iterate rather than a loop

def max_rotation_v2(num)
  n = num.to_s.size
  n.downto(2) do |n|
    num = rotate(num, n)
  end
  num
end

p max_rotation_v2(735291)
