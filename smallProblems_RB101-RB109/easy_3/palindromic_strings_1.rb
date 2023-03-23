# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

# PEDAC
# P

# E
# palindrome?("madam") == true
# palindrome?("Madam") == false # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?("356653") == true

# D/A
# good fit for String#reverse method
# if string input == string.reverse

def palindrome?(str)
  !!(str == str.reverse) # correct, although didn't even need the doublebang
end

# p palindrome?("madam") == true
# p palindrome?("Madam") == false # (case matters)
# p palindrome?("madam i'm adam") == false # (all characters matter)
# p palindrome?("356653") == true

# how to do for array?
# assuming that am reading prompt correctly and that characters within array elements themselves should be reserved, in addition to the sequence of array elements.. otherwise the same reverse method works just as well on arrays..
# ex of just sequence -- ['at', 'ba', 'ca'].reverse => ["ca", "ba", "at"]
# what i will do -- ['at', 'ba', 'ca'].reverse => ["ac", "ab", "ta"]

def palindrome?(param)
  if param.is_a?(String)
    param == param.reverse
  elsif param.is_a?(Array)
    param == param.join.reverse.scan(/.{1,2}/) #regex, looked up
  end
end

# p palindrome?("madam") == true
# p palindrome?("Madam") == false # (case matters)
# p palindrome?("madam i'm adam") == false # (all characters matter)
# p palindrome?("356653") == true
# p palindrome?(["oh", "my", 2, [3]])
# p palindrome?(%w[oh my ym ho])

# figured out how to do with an if statement, not sure how to differentiate between a string and array without one...
# idea... ||
# result, returns NoMethodErrors

# def palindrome?(param)
#   (param == param.reverse) || (param == param.join.reverse.scan(/.{1,2}/))
# end

# p palindrome?("madam") == true
# p palindrome?("Madam") == false # (case matters)
# p palindrome?("madam i'm adam") == false # (all characters matter)
# p palindrome?("356653") == true
# p palindrome?(["oh", "my", 2, [3]]) == false
# p palindrome?(%w[oh my ym ho]) == true
