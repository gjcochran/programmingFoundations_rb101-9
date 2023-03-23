# convert string to integer without using String#to_i or Integer() methods

# D/A - hash with string nums and their ints
# string.chars
# arr.map 


def string_to_integer(str)
  a = ('0'..'9').to_a
  b = (0..9).to_a
  c = a.zip(b)
  hash = c.to_h

  sum = 0
  exp = 1
  iter = str.reverse.chars
  
  loop do
    el = iter[0]
    sum += (hash[el] * exp)
    exp *= 10
    iter.shift
    break if iter.empty?
  end
  sum
end

p string_to_integer('4321')
p string_to_integer('570') 

# REVIEW: solution works but is not all that simple. used loop b/c couldnt figure out how to do with each. LS answer below for reference

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer_LS(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end
