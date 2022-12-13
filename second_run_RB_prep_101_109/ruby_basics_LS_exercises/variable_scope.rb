a = 7

def my_value(b)
  b += 10
end

my_value(a) # will print 17
puts a # will print 7 (and return nil) # numbers are immutable, and assignment merely changes the object that a variable references. 

#-------------------------------------------
a = 7

def my_value(b)
  a = b
end

my_value(a + 5) # 12
puts a # 7 # numbers are immutable, and assignment merely changes the object that a variable references. 

#-------------------------------------------
a = 'Xyzzy'

def my_value(b)
  b[2] = '-'
end

my_value(a) # '-'
puts a # Xy-zy # Strings are mutable - they can be modified - and, in particular, the method String#[]= is a mutating method; it actually modifies the string. Since we are actually modifying the string referenced by b, and b references the same string as a, the result from printing a shows an update to the value of the string.

#-------------------------------------------
a = 'Xyzzy'

def my_value(b)
  b = 'yzzyX'
end

my_value(a) # yzzyX
puts a # Xyzzy # we are not modifying that string in this exercise. Instead, we are assigning a completely new string to b. Assignment never changes the value of an object; instead, it creates a new object, and then stores a reference to that object in the variable on the left. So, at the end of my_value, b references the string 'yzzyX', while a remains unchanged: it still references "Xyzzy"

#-------------------------------------------
a = 7

def my_value(b)
  b = a + a
end

my_value(a) # i think this will return an error as a local variables do not exist in this method
puts a # 7

# was correct about error and a value!
#Method definitions are self contained with respect to local variables. Local variables initialized inside the method definition are not visible outside the method definition, and local variables initialized outside the method definition are not visible inside the method definition.

# Note, however, that local variables will be visible (via closures) inside blocks, procs, and lambdas.

#-------------------------------------------
a = 7
array = [1, 2, 3]

array.each do |el|
  a = el
end

puts a # 3
# We are now dealing with a method invocation that has a block. The scoping rules for a method invocation with a block differ from the rules for method definitions. With method definitions, local variable scope is restricted to the method definition itself. In contrast, a method invocation with a block has more open scoping rules; the block can use and modify local variables that are defined outside the block.

# In this case, a starts out as 7, then we set a to 1, 2 and 3 in sequence. By the time we get to the puts, a has a value of 3.

#-------------------------------------------
array = [1, 2, 3]

array.each do |el|
  a = el
end

puts a # error
# We now get an exception when the puts method is invoked with the local variable a as an argument on line 7 because the local variable a is not defined in this scope.

# The local variable a that is initialized in the block passed to the each method has a scope that is local to that block. Since there is no local variable named a initialized in a scope external to the scope of that block, the expression a = element on line 4 is initialization and not reassignment.

#-------------------------------------------
a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a # 7
# This problem demonstrates shadowing. Shadowing occurs when a block argument hides a local variable that is defined outside the block. Since the outer a is shadowed, the a += 1 has no effect on it. In fact, that statement has no effect at all.

#-------------------------------------------

a = 7
array = [1, 2, 3]

def my_value(arr)
  arr.each do |b|
    a += b
  end
end

my_value(array)
puts a # 10
# i was incorrect about this one!! TO REVIEW
# answer: nomethoderror (therefore a is still 7)
# a at the top level is not visible inside the invocation of the each method with a block because the invocation of each is inside my_value, and method definitions are self-contained with respect to local variables. Since the outer a is not visible inside the my_value method definition, it isn't visible inside the method invocation with a block.