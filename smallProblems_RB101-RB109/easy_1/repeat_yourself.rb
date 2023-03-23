# PEDAC
# P:
# input: string and positive integer (as method arguments)
# output: prints the string x times (ie integer times)

# D: times loop

# C:

def repeat(string, integer)
  integer.to_i.times { puts string }
end

repeat("Hello", 3)

# this works, now testing edge cases

repeat(5, 3)
# repeat("Hi", "r") #==> noMethodError
# changing to .to_i
repeat("hi", "3")
repeat("Hello", 3)
