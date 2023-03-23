=begin

In this kata, you've to count lowercase letters in a given string
and return the letter count in a hash with 'letter' as key and
count as 'value'. The key must be 'symbol' instead of string
in Ruby and 'char' instead of string in Crystal.

Example:

letterCount('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

=end

# input - string
#   only lowercase letters
# return - hash
#   key - symbol representation of lowercase letters
#   value - count of each letter in the input
# rules -
#   only lowercase letter string input
#   to symbol for key
#   return hash in alphabetical order

# algorithm
#   initialize variable and assign it empty hash object to store results
#   split string input into array of characters
#   iterate over this array
#     call count method on array for each character
#     convert char/letter to sym
#     store sym/count in results hash
#   alphabetize sort results hash and return it

def letter_count(string)
  results = {}
  array = string.chars
  array.each { |letter| results[letter.to_sym] = array.count(letter) }
  results.sort.to_h
end

p letter_count('codewars') #== {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

# took 9 mins
