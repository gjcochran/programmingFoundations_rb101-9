# PROMPT: input: word(s)
# output: num of chars (spaces do not count)

# D/A - input.chars.size

# misread prompt and first version counted spaces...
puts "string?"
str = gets.chomp

# chars = str.chars.size
chars = str.scan(/\w/).size
puts "there are #{chars} characters in '#{str}'"

# REVIEW: READ PROMPT THOROUGHLY!
# LS solved using String#delete(' ') method
