# PROMPT: print all odd nums from `1` to `99` on separate lines

# D/A - could use each method

(1..99).each { |n| puts n if n.odd? }

# REVIEW: answer works well. many ways to solve this. LS used while loop
# value = 1
# while value <= 99
#   puts value
#   value += 2
# end
