# Write a method that takes a positive integer or zero, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

# E
# integer_to_string(4321) == "4321"
# integer_to_string(0) == "0"
# integer_to_string(5000) == "5000"

# D/A
# create a hash that is the opposite of previous problems
# step 1 -- turn into array (w divmod method)
# step 2 -- pop off 2nd element in returned array
# step 3 -- convert array to string with join method

def integer_to_string(int)
  arr = int.divmod(1)
  arr.pop
  arr.join
end

p integer_to_string(4321) == "4321"
p integer_to_string(0) == "0"
p integer_to_string(5000) == "5000"

# works, although reviewing prompt i wonder if they consider Array#join a standard conversion method...

# LS answer typed out below

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string_v2(number)
  result = ''
  loop do 
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

# p DIGITS[1] #=> '1'
# irb(main):044:0> result = ''
# => ""
# irb(main):045:0> number = 4321
# => 4321
# irb(main):046:0> number, remainder = number.divmod(10)
# => [432, 1]
# irb(main):047:0> result.prepend('1')
# => "1"