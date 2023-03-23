# input: integer
# output: integer -> next "featured" number
# rules to be "featured": 
#   odd number
#   % 7 == 0
#   digits are unique

def featured(num)
  n = num + 1
  loop do
    if n.odd? && n % 7 == 0 && n.to_s.size == n.to_s.chars.uniq.size
      break
    else 
      n += 1
    end
  end
  n
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

# decent. works except didn't bother with error + is a bit slow for large numbers
# LS version if faster bc increment by 14 only once theyve found a potential value
# the highest possible unique number is 9876543210 ...smh, clever.

def featured_LS(number)
  number += 1
  number += 1 until number.odd? && number % 7 == 0

  loop do
    number_chars = number.to_s.split('')
    return number if number_chars.uniq == number_chars
    number += 14
    break if number >= 9_876_543_210
  end

  'There is no possible number that fulfills those requirements.'
end
