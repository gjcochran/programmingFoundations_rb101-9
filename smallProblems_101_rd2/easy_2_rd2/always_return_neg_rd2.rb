# PROMPT:
# num as argument
# if num is positive, return negative of that num
# return num if 0 or neg

def negative(num)
  num > 0 ? -num : num
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0

# REVIEW: great.
#

