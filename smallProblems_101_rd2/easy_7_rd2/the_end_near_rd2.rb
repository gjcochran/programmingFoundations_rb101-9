# input: string
# output: next to last word of input String

# A 
# split by words into array
# return 2nd to last word with [-2]

def penultimate(str)
  str.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

# great, same answer as LS.
