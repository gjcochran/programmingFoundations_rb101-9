# Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

# D/A
# use a range
# (1..99)
# each method with puts

#  C

(1..99).each { |num| puts num if num.odd? }

#
1.upto(99) { |num| puts num if num % 2 == 1 }
