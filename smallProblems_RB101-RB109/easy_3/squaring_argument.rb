# Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).

def multiply(num1, num2)
  if (num1.is_a?(Integer) || num1.is_a?(Float)) &&
       (num2.is_a?(Integer) || num2.is_a?(Float))
    num1 * num2
  else
    puts "Not a number"
  end
end

# def square(num)
#   if num.is_a?(Integer) || num.is_a?(Float)
#     num**2
#   else
#     puts "Not a number"
#   end
# end

# square(5)
# square(-8)

def square(num, to = 2)
  square = multiply(num, num)
  to > 2 ? square * (num**(to - 2)) : square
end

p square(5)
p square(-8)
p square(5, 4)
