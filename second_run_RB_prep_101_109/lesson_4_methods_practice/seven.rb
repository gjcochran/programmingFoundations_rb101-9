statement = "The Flintstones Rock"

# Create a hash that expresses the frequency with which each letter occurs in this string

p statement.chars.tally
# another option that is a little more clean..
p statement.downcase.scan(/\w/).tally.sort.to_h


