# Write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards.

# P
# input: integer
# output: boolean
# true if integer is "palindromic"

# E
# palindromic_number?(34_543) == true
# palindromic_number?(123_210) == false
# palindromic_number?(22) == true
# palindromic_number?(5) == true

# D/A
# 1. convert to string
# 2. reverse string
# 3. convert back to integer
# 4. compare input to modified input

# C

def palindromic_number?(int)
  int == int.to_s.reverse.to_i
end

p palindromic_number?(34_543) == true
p palindromic_number?(123_210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true

# will not work if the number begins with 0/0s
# examples:
# irb(main):002:0> 0024.to_s.reverse.to_i
# => 2
# irb(main):003:0> 0003.to_s
# => "3"
# irb(main):004:0> 024.to_s
# => "20"
# irb(main):005:0> 00245.to_s
# => "165"
# prefixing an integer in ruby "A numeric literal that starts with 0 is an octal representation, except the literals that start with 0x which represent hexadecimal numbers or 0b which represent binary numbers."
# https://ruby-doc.org/core-3.1.2/doc/syntax/literals_rdoc.html#label-Number+Literals

# can convert octal to decimal here -- https://www.rapidtables.com/convert/number/octal-to-decimal.html

# if there is a way to address this for this challenge, not sure what that would be...
