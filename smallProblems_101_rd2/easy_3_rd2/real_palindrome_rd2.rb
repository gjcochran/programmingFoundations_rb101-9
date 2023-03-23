def real_palindrome?(str)
  arr = str.downcase.scan(/[a-zA-Z0-9]/)
  arr == arr.reverse
end

p real_palindrome?('Madam')
p real_palindrome?("Madam, I'm Adam")

# REVIEW: good. LS used String#gsub or String#delete
