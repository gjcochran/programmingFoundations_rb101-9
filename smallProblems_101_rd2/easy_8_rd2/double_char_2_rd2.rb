# input: string
# output: string -> only consonants from input are doubled

# rules: vowels, digits, punctuation, and whitespace, not doubled

# A
# str.chars
# arr.map
# ternary
#   if match? consonants (stored as variable)
#   decided to use include? rather than regex match 
#     although would work with string interpolation
#     ex. 'b'.match?(/#{CONSONANTS}/) => true

def double_consonants(str)
  cons = ('a'..'z').to_a - %w(a e i o u)
  str.chars.map { |el| cons.include?(el.downcase) ? el * 2 : el }.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""

# good. LS answer very similar to mine, although they used each_char << local variable String
# rather than map.join
# to note, tried to use a CONSTANT variable for CONSONANTS but nvim/term returned error
# but LS used CONSTANT
# error was dynamic constant... 
