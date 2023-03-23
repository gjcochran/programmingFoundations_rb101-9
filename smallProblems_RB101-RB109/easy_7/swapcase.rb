# Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.

# E
# swapcase('CamelCase') == 'cAMELcASE'
# swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

def swapcase(str)
  swap = ''
  counter = 0
  loop do
    if str[counter] =~ /[a-z]/
      swap[counter] = str[counter].upcase
    elsif str[counter] =~ /[A-Z]/
      swap[counter] = str[counter].downcase
    else
      swap[counter] = str[counter]
    end
    counter += 1
    break if counter == str.size
  end
  swap
end

p swapcase('Camel')
p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

#  LS answer was fairly similar to mine, pasted below

# def swapcase(string)
#   characters = string.chars.map do |char|
#     if char =~ /[a-z]/
#       char.upcase
#     elsif char =~ /[A-Z]/
#       char.downcase
#     else
#       char
#     end
#   end
#   characters.join
# end