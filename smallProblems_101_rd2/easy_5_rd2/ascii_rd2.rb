# use String#ord to determine ASCII value of char
# sum all char ASCII values

def ascii_value(str)
  vals = str.chars.map(&:ord)
  vals.sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('Four score')  
p ascii_value('Launch School') 
p ascii_value('a') 
p ascii_value('') 

# good.
