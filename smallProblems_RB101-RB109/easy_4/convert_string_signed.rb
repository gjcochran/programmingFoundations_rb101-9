# In the previous exercise, you developed a method that converts simple numeric strings to Integers. In this exercise, you're going to extend that method to work with signed numbers.

# Write a method that takes a String of digits, and returns the appropriate number as an integer. The String may have a leading + or - sign; if the first character is a +, your method should return a positive number; if it is a -, your method should return a negative number. If no sign is given, you should return a positive number.

# You may assume the string will always contain a valid number.

# You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. You may, however, use the string_to_integer method from the previous lesson.

# DIGITS = {
#   "0" => 0,
#   "1" => 1,
#   "2" => 2,
#   "3" => 3,
#   "4" => 4,
#   "5" => 5,
#   "6" => 6,
#   "7" => 7,
#   "8" => 8,
#   "9" => 9,
#   # '+' => ,
#   # '-' => -,
# }

# def string_to_integer(string)
#   digits = string.chars.map { |char| DIGITS[char] }

#   value = 0
#   digits.each { |digit| value = 10 * value + digit }
#   value
# end

# P
# add funcitonality to include positive or negative numbers

# E
# string_to_signed_integer("4321") == 4321
# string_to_signed_integer("-570") == -570
# string_to_signed_integer("+100") == 100

# test of signed numbers on previous method
# p string_to_integer("4312")
# p string_to_integer("+431") # TypeError
# p string_to_integer("-431")
# D/A

# p DIGITS.keys #=> ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

# irb(main):001:1* DIGITS = {
#   irb(main):002:1*   "0" => 0,
#   irb(main):003:1*   "1" => 1,
#   irb(main):004:1*   "2" => 2,
#   irb(main):005:1*   "3" => 3,
#   irb(main):006:1*   "4" => 4,
#   irb(main):007:1*   "5" => 5,
#   irb(main):008:1*   "6" => 6,
#   irb(main):009:1*   "7" => 7,
#   irb(main):010:1*   "8" => 8,
#   irb(main):011:1*   "9" => 9,
#   irb(main):012:0> }
#   => {"0"=>0, "1"=>1, "2"=>2, "3"=>3, "4"=>4, "5"=>5, "6"=>6, "7"=>7, "8"=>8,...
#   irb(main):013:1* def string_to_integer(string)
#   irb(main):014:1*   digits = string.chars.map { |char| DIGITS[char] }
#   irb(main):015:0> end
#   => :string_to_integer
#   irb(main):016:0> string_to_integer('45389')
#   => [4, 5, 3, 8, 9]

# going to separate the original method into two parts
# second part will adjust to ternary
# if string.chars[0] == + then Array#shift
# if string.chars[0] == - then Array#shift + after each method return negative value

# C
DIGITS = {
  "0" => 0,
  "1" => 1,
  "2" => 2,
  "3" => 3,
  "4" => 4,
  "5" => 5,
  "6" => 6,
  "7" => 7,
  "8" => 8,
  "9" => 9,
}

def string_to_signed_integer(string)
  arr = string.chars.map { |char| DIGITS[char] }
  arr.shift if arr[0] == nil

  value = 0
  arr.each { |digit| value = 10 * value + digit }
  string.chars[0] == "-" ? -value : value
end

p string_to_signed_integer("4321")
p string_to_signed_integer("-570")
p string_to_signed_integer("+100")
p string_to_signed_integer("4321") == 4321
p string_to_signed_integer("-570") == -570
p string_to_signed_integer("+100") == 100
