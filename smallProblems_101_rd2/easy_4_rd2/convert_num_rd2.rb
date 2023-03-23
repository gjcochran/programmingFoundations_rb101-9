# can't use to_s or format

# D/A
# hash again but keys are digits
# loop
# divmod to turn into array
# then can iterate comparing to hash and map return

def integer_to_string(num)
  a = (0..9).to_a
  b = ('0'..'9').to_a
  c = a.zip(b)
  hash = c.to_h
  
  arr = []
  n = num
  loop do
    inter = n.divmod(10)
    arr << inter[1]
    n = inter[0]
    break if n == 0
  end
  
  arr = arr.reverse
  arr.map { |el| hash[el] }.join
end

p integer_to_string(4321)
p integer_to_string(0) 
p integer_to_string(5000) 

# REVIEW: great. LS answer also used divmod(10) within a loop
# they had several differences to me:
# 1. they didnt bother with hash values as they used array indexing to pull strings ex DIGITS[0] == '0' (DIGITS array is '0'..'9'.to_a)
# 2. they used prepend method rather than shovel so that didnt have to reverse the result
# 3. they pushed (using prepend) values to an empty string rather than an empty array, which saved them multiple steps


