# prompt: input: String of digits
# output: integer
# + - leading sign for positive negative
# cant use String#to_i

def string_to_signed_integer(str)
  a = ('0'..'9').to_a
  b = (0..9).to_a
  c = a.zip(b)
  nums = c.to_h

  digits = str.chars.map { |el| nums[el] }
  digits.shift if digits[0] == nil

  value = 0
  digits.each { |el| value = 10 * value + el }
  str[0] == '-' ? -value : value
end

p string_to_signed_integer('4321')
p string_to_signed_integer('-570')
p string_to_signed_integer('+100')

# good. different than LS because they reused previous method 
