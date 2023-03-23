# Create a method that takes two arguments, multiplies them together, and returns the result.

# PEDAC

# P
# input: two arguments (do i need to verify that are integers?)
# output: multiplication of two inputs

# E
# multiply(5, 3) == 15

# D/A
# seems deceptively simple, could simply do arg1 * arg2 = output
# will add an if/else to send error msg to user if args are not integers

def multiply(num1, num2)
  if (num1.is_a?(Integer) || num1.is_a?(Float)) &&
       (num2.is_a?(Integer) || num2.is_a?(Float))
    mult = num1 * num2
  else
    puts "Not a number"
  end
end

puts multiply(3, 4) #==> ouptut: 12; return: nil
multiply(3, 4) #==> output: ; return: 12
multiply(3, "4") #==> output: Not a number; return: nil
