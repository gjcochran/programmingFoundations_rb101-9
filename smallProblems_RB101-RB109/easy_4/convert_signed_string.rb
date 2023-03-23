# Write a method that takes an integer, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. You may, however, use integer_to_string from the previous exercise.

# signed_integer_to_string(4321) == '+4321'
# signed_integer_to_string(-123) == '-123'
# signed_integer_to_string(0) == '0'

DIGITS = (0..9).to_a.join.chars
#=> ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

def int_to_string(int)
  result = ''
  loop do
    int, remainder = int.abs.divmod(10)
    result.prepend(DIGITS[remainder])
    break if int.zero?
  end
  result
end

p int_to_string(-4321)
p int_to_string(0)

def signed_integer_to_string(int)
  if int < 0
    "-#{int_to_string(int)}"
  elsif int == 0
    '0'
  else
    "+#{int_to_string(int)}"
  end
end

p signed_integer_to_string(-4321)
p signed_integer_to_string(0)
p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'

# LS answer below, very similar but with case rather than if/else
# def signed_integer_to_string(number)
#   case number <=> 0
#   when -1 then "-#{integer_to_string(-number)}"
#   when +1 then "+#{integer_to_string(number)}"
#   else         integer_to_string(number)
#   end
# end

# The expression number <=> 0 may look a bit odd; this is ruby's "spaceship" operator. It compares the left side against the right side, then returns +1 if the left side is greater than the right, -1 if the left side is smaller than the right, and 0 if the values are the same. This is often useful when you need to know whether a number is positive, negative, or zero.