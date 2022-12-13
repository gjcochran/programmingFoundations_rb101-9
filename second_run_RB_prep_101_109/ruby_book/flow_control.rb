# 1. 
p (32 * 4) >= 129 # false
p false != !true # false
p true == 4 # false
p false == (847 == '847') # true
p (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false # true

# 2. 
def caps(str)
  str.size > 10 ? str.upcase : str
end

p caps('example')
p caps('exampleexample')

#4. what will print?
# Snippet 1
'4' == 4 ? puts("TRUE") : puts("FALSE")
# will print 'FALSE' and return nil

# Snippet 2
x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?"
else
  puts "Did you?"
end

# will print Did you get it right and return nil

# Snippet 3
y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end

# will print Alright now and return nil

# 6
# p (32 * 4) >= "129" # error
p 847 == '847' # false
p '847' < '846' # false
p '847' > '846' # true
p '847' > '8478' # false
p '847' < '8478' # true