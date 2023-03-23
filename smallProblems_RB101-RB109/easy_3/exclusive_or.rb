# The || operator returns a truthy value if either or both of its operands are truthy. If both operands are falsey, it returns a falsey value. The && operator returns a truthy value if both of its operands are truthy, and a falsey value if either operand is falsey. This works great until you need only one of two conditions to be truthy, the so-called exclusive or.

# In this exercise, you will write a method named xor that takes two arguments, and returns true if exactly one of its arguments is truthy, false otherwise. Note that we are looking for a boolean result instead of a truthy/falsy value as returned by || and &&.

# P the difference between xor and || is that with xor a truthy/truthy will return false

# E
# xor?(5.even?, 4.even?) == true
# xor?(5.odd?, 4.odd?) == true
# xor?(5.odd?, 4.even?) == false # this would return true if was ||
# xor?(5.even?, 4.odd?) == false

def xor?(arg1, arg2)
  if arg1 == true && arg2 == false
    true
  elsif arg1 == false && arg2 == true
    true
  else
    false
  end
end

xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

# above worked in given examples, but confused true with truthy, etc in implementation

# simpler option given by LS, pasted below

# def xor?(arg1, arg2)
#   return true if arg1 && !arg2
#   return true if arg2 && !arg1
#   false
# end

# even shorter option!
# !! (doublebang) meanging -- "In most programming languages, including Ruby, ! will return the opposite of the boolean value of the operand. So when you chain two exclamation marks together, it converts the value to a boolean."

# def xor?(value1, value2)
#   !!((value1 && !value2) || (value2 && !value1))
# end
