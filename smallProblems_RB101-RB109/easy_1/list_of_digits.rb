# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

# PEDAC
# P
# input: positive integer
# output: array with digits of inputted integer, separated by spaces

# E (given)
# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true

# D
# my first inclination is to use Enumerable.to_a
# https://ruby-doc.org/core-3.1.2/Enumerable.html#method-i-to_a

# C
# def digit_list(num)
#   num.to_a
# end

# test against examples:

# puts digit_list(12_345) == [1, 2, 3, 4, 5]
#==> NOMETHODERROR

# can't use to_a with integers.
# Integer#digits doesnt seem like will be a good fit because reorders the digits

# attempt 2

# D
# i think ill want to convert the given integer to a string, then split that string using split method with a comma (ie. split(//))
# then iterate over that string and add to new array

def digit_list(num)
  array = []
  string_array = num.to_s.split(//)
  string_array.each { |char| array << char.to_i }
  array
end

p digit_list(124)
puts digit_list(12_345) == [1, 2, 3, 4, 5]

# mine worked, 2 alternate answers from LS below

def digit_list_2(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end
  digits
end

def digit_list_3(number)
  number.to_s.chars.map(&:to_i)
end

# &:to_i is shorthand for: something.map { |char| char.to_i }
