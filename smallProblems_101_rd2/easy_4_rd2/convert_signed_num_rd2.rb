
def signed_integer_to_string(num)
  digits = ('0'..'9').to_a
  
  result = ''
  n = num.abs
  loop do
    sub = n.divmod(10)
    result.prepend(digits[sub[1]])
    n = sub[0]
    break if n == 0
  end
  
  if num == 0
    result
  elsif num.positive?
    "+#{result}"
  else
    "-#{result}"
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'

# good.
