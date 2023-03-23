# Write a method that counts the number of occurrences of each element in a given array. Once counted, print each element alongside the number of occurrences.

# PEDAC

# P
# input: an array of values
# output: unique values with number of occurrences

# example:
# vehicles = %w[car car truck car SUV truck motorcycle motorcycle car truck]

# count_occurrences(vehicles)

# #==>
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# D
# https://ruby-doc.org/core-3.1.2/Enumerable.html#method-i-count

# iterate over array using count method
# ruby docs example:
# [0, 1, 2, 1].count(1)  # => 2

# def count_occurrences(array)
#   number_hash = {}
#   array.each do |elements|
#     number = array.count(elements)
#     number_hash[elements] = number
#   end
#   puts number_hash
# end

# vehicles = %w[car car truck car SUV truck motorcycle motorcycle car truck]

# count_occurrences(vehicles) #==> {"car"=>4, "truck"=>3, "SUV"=>1, "motorcycle"=>2}

# this is nearly correct, but is returning a hash which they don't want, attempt #2 below

def count_occurrences(array)
  number_hash = {}
  array.each do |elements|
    number = array.count(elements)
    number_hash[elements] = number
  end
  number_hash.to_a.each { |el| puts "#{el[0]} => #{el[1]}" }
end

vehicles = %w[car car truck car SUV truck motorcycle motorcycle car truck]

count_occurrences(vehicles)

# worked!
# LS answer was different, although they did use same idea of each method to input empty hash. they managed to use #uniq (which i could not figure out how to use without errors)
# pasted below

# def count_occurrences(array)
#   occurrences = {}

#   array.uniq.each do |element|
#     occurrences[element] = array.count(element)
#   end

#   occurrences.each do |element, count|
#     puts "#{element} => #{count}"
#   end
# end
