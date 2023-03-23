# Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters. If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.

# gsub with regex -- https://www.rubyguides.com/2015/06/ruby-regex/
# gsub(/[^0-9a-zA-Z ]/, '') CAN ALSO BE WRITTEN gsub(/[\W]/, '') #==> substitute everything that is not a number, a lowercase letter, an uppercase letter, or a space with ''(ie nothing)

def real_palindrome?(str)
  str.downcase.gsub(/[\W]/, "") == str.downcase.gsub(/[\W]/, "").reverse
end

real_palindrome?("madam") == true
real_palindrome?("Madam") == true
real_palindrome?("Madam, I'm Adam") == true
real_palindrome?("356653") == true
real_palindrome?("356a653") == true
real_palindrome?("123ab321") == false

#tests
# "Madam, I'm Adam".downcase.gsub(/[^0-9a-zA-Z]/, "")
# "Madam, I'm Adam".downcase.gsub(/[^0-9a-zA-Z]/, "").reverse

# "Madam, I'm Adam".downcase.gsub(/[\W]/, "")
# "Madam, I'm Adam".downcase.gsub(/[\W]/, "").reverse

# LS used #delete rather than #gsub
# info belowDiscussion
# Chances are you reached for a String#gsub here to eliminate the non-alphanumeric characters. There's nothing wrong with that, but we'll take the opportunity to use and talk about String#delete instead. #delete is an interesting method that takes arguments that sort of look like regular expressions, and then deletes everything formed by the intersection of all its arguments. See the documentation for complete details.

# For our purposes, we need to remove the non-alphanumeric characters; to do that, we tell delete to delete everything that isn't a letter or digit. We then pass the result to our original palindrome? method to determine if the cleaned up string is a palindrome.

# Further Exploration
# Read the documentation for String#delete, and the closely related String#count (you need to read count to get all of the information you need for delete.)

# def real_palindrome?(string)
#   string = string.downcase.delete('^a-z0-9')
#   palindrome?(string)
# end
