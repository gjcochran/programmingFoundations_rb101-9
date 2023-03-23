# formal pseudocode keywords to use...
# START	start of the program
# SET	sets a variable we can use for later
# GET	retrieve input from user
# PRINT	displays output to user
# READ	retrieve value from variable
# IF / ELSE IF / ELSE	show conditional branches in logic
# WHILE	show looping logic
# END	end of the program

# -------------------------------------------------------------------- 
# EXAMPLE...
# problem: a method that determines which number is greatest in a collection

# informal pseudocode:

# Given a collection of integers.

# Iterate through the collection one by one.
#   - save the first value as the starting value
#   - for each iteration, compare the saved value with the current value
#   - if the saved value is greater, or it's the same
#     - move to the next value in the collection
#   - otherwie, if the current value is greater,
#    - reassign the saved value as the current value
   
# After iterating through the collection, return the saved value

# formal pseudocode:

# # Given a collection of integers called "numbers"

# SET iterator = 1
# SET saved_number = value with numbers collection at space 1

# WHILE iterator <= length of numbers
#   SET current_number = value within numbers collection at space "iterator"
#   IF saved_number >= current_number
#     go to the next iteration
#   ELSE
#     saved_number = current_number

#   iterator = iterator + 1

# PRINT saved_number

# END

# code:

def find_greatest(numbers)
  saved_number = numbers[0]

  numbers.each do |num|
    if saved_number >= num
      next
    else
      saved_number = num
    end
  end

  saved_number
end

# -------------------------------------------------------------------- 
# PRACTICE

# practice # 1
# problem: a method that returns the sum of two integers 

# informal:
# Given two integers.

# Add the integers together.
#   - assign the result of this addition to a sum value

# return the sum value

#formal
# START

# # Given two integers as method parameters

# SET sum = param1 + param2

# PRINT sum

# END

# code
def sum(num1, num2)
  # sum = num1 + num2
  num1 + num2
end

# -------------------------------------------------------------------- 
# practice #2
# problem: a method that takes an array of strings, and returns a string that is all those strings concatenated together

# informal:

# Given an array of strings.

# Concatenate the array using the join method

# code:
def concat(arr)
  arr.join
end

# ..... do additional practice with this as the A step in PEDAC for longer problems.. as that will be more useful