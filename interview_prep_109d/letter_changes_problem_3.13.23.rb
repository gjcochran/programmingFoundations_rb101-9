# Have the method letter_changes(str) take the str parameter being passed and
# modify it using the following algorithm. Replace every letter in the string
# with the 3rd letter following it in the alphabet (ie. c becomes f, Z becomes C).
# Then return this modified string.

# input - String
# output - string 
    # modified for alpha characters, 3rd next character in alphabet 
    # case remains the same 
    # all other types of characters are unchanged and returned at same index

# algorithm
#   reference hash using zip of alpha as keys and 1..26 as numbers
#   split into array of characters (chars)
#   flag boolean for each char -- true if downcase
#   iterate using each with index
#   if char.downcase is alpha 
#     sub! ...
#       value of letter + 3 as caller, divmod.. 26 as argument 
#         if 0 then z 
#          else result of divmod .last
# return string (modified)

def letter_changes(str)
  alphabet = ('a'..'z').zip(1..26).to_h
  ref_array = str.chars
  is_downcase = true

  ref_array.each_with_index do |char, idx|
    next unless char =~ /[a-zA-z]/
    char.downcase == char ? (is_downcase = true) : (is_downcase = false)
    new_num = alphabet[char.downcase] + 3
    new_value = new_num.divmod(26).last
    new_value.zero? ? (new_char = 'z') : (new_char = alphabet.key(new_value))
    is_downcase ? (str[idx] = new_char) : (str[idx] = new_char.upcase)
  end
  str
end

## review: good. solved in 25 mins

####

LOWERCASE = ("a".."z").to_a
UPPERCASE = ("A".."Z").to_a

# Rich's answer for ref:
def letter_changes_Rich(str)
  str.chars.each_with_index do |char, index|
    if LOWERCASE.include?(char)
      str[index] = LOWERCASE[(LOWERCASE.find_index(char) + 3) % 26]
    elsif UPPERCASE.include?(char)
      str[index] = UPPERCASE[(UPPERCASE.find_index(char) + 3) % 26]
    end
  end
  str
end
p letter_changes("this long cake@&") == "wklv orqj fdnh@&"
p letter_changes("Road trip9") == "Urdg wuls9"
p letter_changes("EMAILZ@gmail.com") == "HPDLOC@jpdlo.frp"
p letter_changes('xyz') == ('abc')
