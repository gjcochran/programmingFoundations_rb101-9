# Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

# E
# double_consonants('String') == "SSttrrinngg"
# double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# double_consonants("July 4th") == "JJullyy 4tthh"
# double_consonants('') == ""

# rule: only double if is not a vowel
# seems very simple, will just use unless statement with regex

# def double_consonants(str)
#   result = ''
#   str.each_char { |char| char =~ /[^aeiou]/ ? result << char * 2 : result << char }
#   result
# end

# p double_consonants('String')

# ignoring digits, punctuation and whitespace as well... + accounting for case with /i

def double_consonants(str)
  result = ''
  str.each_char { |char| char =~ /[b-df-hj-np-tv-z]/i ? result << char * 2 : result << char }
  result
end

p double_consonants('String')
p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""

# LS answer below
# CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

# def double_consonants(string)
#   result = ''
#   string.each_char do |char|
#     result << char
#     result << char if CONSONANTS.include?(char.downcase)
#   end
#   result
# end