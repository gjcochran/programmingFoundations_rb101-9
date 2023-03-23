# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

# input - string 
# return - string
# rules:
#   return the same string, mutated or new string?
#     -- this would be question to ask! much easier if not mutated...
#     i do not know how to solve if mutating... going to assume new string
#   can be multiple words
#     spaces remain the same
#     total number of characters remains the same
#   wont contain any characters that arent alphabetical
#   every 2nd character (this means that all odd index characters)
#     in every 3rd word converted to uppercase, all else the same

# algorithm
#   split string into new array
#   iterate over the array (use map.with_index)
#   if index + 1 is multiple of 3 then...
#      uppercase every odd index element 
#         iterate over each word (use map.with_index)
#           if index odd, uppercase
#         then join return array
#   else
#     dont modify

def to_weird_case(str)
  arr = str.split
  results = arr.map.with_index do |word, word_index|
    if (word_index + 1) % 3 == 0
      word.chars.map.with_index do |char, char_index|
        char_index.odd? ? char.upcase : char
      end.join
    else
      word
    end
  end
  results.join(' ')
end

# Examples:

p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

# The tests above should print "true".

## took 19 mins. was only able to solve returning new string
# did not test much during process, would imagine this may count against me
