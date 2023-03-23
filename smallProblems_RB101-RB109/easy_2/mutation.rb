# What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w[Moe Larry Curly Shemp Harpo Chico Groucho Zeppo]
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?("C", "S") }
puts array2

# the second each method does not alter array2 at all because they are not the same object
# therefore array 2 is %w[Moe Larry Curly Shemp Harpo Chico Groucho Zeppo]
# wrong! >> reread the section on Pass by Reference vs Pass by Value in Lesson 2 of Programming Foundations. # REREAD

# even though array1 and array2 are different objects, because the value were passed by reference, ie mutated with <<, ... the string values are the same objects, array2 will change when array1 is iterated upon with a destructive method like upcase!
