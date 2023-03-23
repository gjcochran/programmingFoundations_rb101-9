# Write a method that takes a number as an argument. If the argument is a positive number, return the negative of that number. If the number is 0 or negative, return the original number.

# E
# negative(5) == -5
# negative(-3) == -3
# negative(0) == 0      # There's no such thing as -0 in ruby

# going to convert the input to positive with #abs and then make it negative so that double negatives dont result in a positive output

def negative(int)
  -int.abs
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0 

# LS listed my answer as an alternative, their primary answer was a ternary, typed below

def negative_v2(int)
  int > 0 ? -int : int
end
p negative_v2(5) == -5
p negative_v2(-3) == -3
p negative_v2(0) == 0 