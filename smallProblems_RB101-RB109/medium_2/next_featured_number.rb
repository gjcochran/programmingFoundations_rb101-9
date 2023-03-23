# A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Return an error message if there is no next featured number.

# E
# featured(12) == 21
# featured(20) == 21
# featured(21) == 35
# featured(997) == 1029
# featured(1029) == 1043
# featured(999_999) == 1_023_547
# featured(999_999_987) == 1_023_456_987

# featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

# P
# featured_numbers ....
# num % 7.zero?
# num.odd?
# num == num.to_s.chars.uniq.join.to_i

# if the above 3 criteria are all true, then is a featured number.

# D/A
# how to compare input to a list of featured numbers...
# step 1 -- how to create a list of featured numbers
# could do input.upto(input*3) ... add numbers that fit criteria to an array and then return the first element in that array
# the input * 3 is arbitrary, but believe should encompass all values

def featured(num)
  arr = []
  (num + 1).upto(num * 3) do |el|
    arr << el if (el % 7).zero? && el.odd? && el == el.to_s.chars.uniq.join.to_i
  end
  arr.any? ? arr.shift : "There is no possible number that fulfills those requirements"
end

p featured(12)
p featured(20)
p featured(21)
p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
# p featured(999_999_987) == 1_023_456_987

# works! LS answer below. note that 9_876_543_210 is the highest possible unique value

# def featured(number)
#   number += 1
#   number += 1 until number.odd? && number % 7 == 0

#   loop do
#     number_chars = number.to_s.split('')
#     return number if number_chars.uniq == number_chars
#     number += 14
#     break if number >= 9_876_543_210
#   end

#   'There is no possible number that fulfills those requirements.'
# end




