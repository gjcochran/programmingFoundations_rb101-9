# The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. String#to_i and the Integer constructor (Integer()) behave similarly. In this exercise, you will create a method that does the same thing.

# Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.

# You may not use any of the standard conversion methods available in Ruby to convert a string to a number, such as String#to_i, Integer(), etc. Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

# P

# E
# string_to_integer("4321") == 4321
# string_to_integer("570") == 570

#D/A
# only thought that comes to me is doing if/else with 0 thru 9
# ex. ex if '1' then 1 or then convert to 1.. how to convert?
# dont think adding to an array will work bc Array#join will return a string even if the array if full of integers
# if '1' then 1 ... how to concatenate integers without adding them?
# inject method
# [4, 3, 2, 1].inject { |num, num2| num * 10 + num2 }
# 4 * 10 + 3 = 43
# 43 * 10 + 2 = 432
# 432 * 10 + 1 = 4321

# therefore, algo is
# input.chars set to an array of substrings
# loop with if/else on that array to create a new array of integers
# array.inject

#  C

def string_to_integer(str)
  arr = str.chars
  counter = 0
  arr_nums = []
  loop do
    if arr[counter] == "0"
      arr_nums << 0
    elsif arr[counter] == "1"
      arr_nums << 1
    elsif arr[counter] == "2"
      arr_nums << 2
    elsif arr[counter] == "3"
      arr_nums << 3
    elsif arr[counter] == "4"
      arr_nums << 4
    elsif arr[counter] == "5"
      arr_nums << 5
    elsif arr[counter] == "6"
      arr_nums << 6
    elsif arr[counter] == "7"
      arr_nums << 7
    elsif arr[counter] == "8"
      arr_nums << 8
    elsif arr[counter] == "9"
      arr_nums << 9
    end
    counter += 1
    break if counter == arr.size
  end
  arr_nums.inject { |num, num2| num * 10 + num2 }
end

p string_to_integer("4321") == 4321
p string_to_integer("570") == 570
p string_to_integer("3")

# mine worked. after reviewing LS answer, much prefer theirs. they essentially converted an array of integers to a single integer in the same way with num * 10 + 1 in an iteration, but their use of map with a constant hash was simpler and easier to read. pasted below

# DIGITS = {
#   '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
#   '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
# }

# def string_to_integer(string)
#   digits = string.chars.map { |char| DIGITS[char] }

#   value = 0
#   digits.each { |digit| value = 10 * value + digit }
#   value
# end

# https://www.techtarget.com/whatis/definition/hexadecimal
# "The hexadecimal system contains 16 sequential numbers as base units, including 0. The first nine numbers (0 to 9) are the same ones commonly used in the decimal system. The next six two-digit numbers (10 to 15) are represented by the letters A through F. This is how the hex system uses the numbers from 0 to 9 and the capital letters A to F to represent the equivalent decimal number.

# "Converting decimal to hexadecimal
# The process of converting a decimal number to hexadecimal is simple, although there are more steps:

# Divide the decimal number by 16.
# Write the remainder in hexadecimal form.
# Divide the result by 16.
# Repeat steps 2 and 3 until the result is 0.
# The hexadecimal value obtained is the sequence of remainders from the last to the first.

# Example

# Here's how to convert the decimal number 1128 to hexadecimal:

# Step 1: Divide 1128 by 16 to arrive at the result of 70 and remainder 8.

# Step 2: Divide the result (70) by 16 to get a new result 4 and remainder 6.

# Step 3: Divide the result (4) by 16 to get the result of 0 and remainder 4.

# Step 4: Represent the hexadecimal number as the sequence of remainders from the last to the first.

# 1128(base10) = 468(base16)"
