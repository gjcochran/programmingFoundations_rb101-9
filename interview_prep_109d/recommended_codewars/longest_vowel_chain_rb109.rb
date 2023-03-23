=begin
The vowel substrings in the word codewarriors are o,e,a,io.
The longest of these has a length of 2. Given a lowercase string that
has alphabetic characters only (both vowels and consonants) and no spaces, return
the length of the longest vowel substring. Vowels are any of aeiou.
=end

# input - string
# return - integer
# rules:
#   input has no spaces
#   input only lowercase alphabetic letters
#   return represents longest substring with multiple vowel characters in a row
#   vowels are a e i o u
# question: what about inputs without any vowels, return 0?

# algorithm
#   split into array which only contains one or more in a row vowels
#   return largest sized substring in array (max by size)

def solve(string)
  array = string.scan(/[aeiou]+/)
  array.max_by(&:size).size
end

p solve("codewarriors")# == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8

# 9 mins
