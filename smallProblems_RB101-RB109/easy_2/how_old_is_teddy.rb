# Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

# PEDAC

# P
# input: none ...
# method: generate a random number between 20 and 200
# output: "Teddy is #{random number} years old"

# E
# Teddy is 69 years old!

# D/A
# https://ruby-doc.org/core-3.0.0/Kernel.html#method-i-rand
# rand(x..y)

def age_generator(name = "Teddy")
  age = rand(20..200)
  puts "#{name} is #{age} years old"
end

age_generator #==> Teddy is 86 years old
age_generator("Jim") #==> Jim is 167 years old
