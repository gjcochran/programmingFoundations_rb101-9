# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

# Understand the problem:
#   Input: String, +Integer
#   Output: print String Integer times

# Example:

# repeat('Hello', 3)
# Hello
# Hello
# Hello

# Code:
def repeat(str, int)
  int.times do
    puts str
  end
end

repeat('Hello', 3)

# REVIEW:
# my answer was exactly the same as the LS answer
