# Write a method that takes one argument, a positive integer, and returns the sum of its digits.
# For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).

# E
# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# D
# use digits to turn into an array and inject to sum

def sum(int)
  arr = int.digits
  arr.inject(:+)
end

puts sum(124)
puts sum(30_928)
puts sum(3_333_333)

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# works, now going to try to basic way with a loop for practice

#D/A
# turn into a string
# then separate into an array with #chars
# use each to iterate over this array
# for each char, convert to an int and add to a sum (defined pre loop)

def sum_v2(int)
  sum = 0
  str = int.to_s
  str.chars.each { |num| sum += num.to_i }
  sum
end

puts sum_v2(124)

# both my solutions worked, and the easy iteration solution looked nearly idential to LS answer. they gave a different answer using map and reduce as another option, pasted below

# def sum(number)
#   number.to_s.chars.map(&:to_i).reduce(:+)
# end
