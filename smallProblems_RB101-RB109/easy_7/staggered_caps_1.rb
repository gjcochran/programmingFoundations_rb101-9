# Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

# E
# staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# staggered_case('ALL_CAPS') == 'AlL_CaPs'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# D/A
# in order to count nonletters as characters, use index of 
# even indices are capitalized, and odd indices are not

def staggered_case(str)
  result = []
  arr = str.chars
  arr.each_with_index do |val, ind|
    if ind.even?
      result << val.upcase
    else
      result << val.downcase
    end
  end
  result.join('')
end

p staggered_case('i love launch school')
p staggered_case('I Love Launch School!')
p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# mine works well, LS answer is a bit different, below

# def staggered_case(string)
#   result = ''
#   need_upper = true
#   string.chars.each do |char|
#     if need_upper
#       result += char.upcase
#     else
#       result += char.downcase
#     end
#     need_upper = !need_upper
#   end
#   result
# end

# explanation of boolean... "To keep track of whether we want to upcase or downcase each character, we define a boolean variable need_upper that starts out as true. Each time we process a character, we upcase it or downcase it based on the current state of need_upper. We then toggle need_upper from true to false or false to true using need_upper = !need_upper"
