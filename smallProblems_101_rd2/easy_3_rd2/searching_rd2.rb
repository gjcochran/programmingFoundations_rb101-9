# PROMPT: solicit 6 nums ; print whether 6th num is within first 5
#
# D/A - push each of first 5 nums to an array
# array.include?(6th_num)

def prompt(str)
  puts ">> #{str}"
end

array = []

prompt "number?"
n1 = gets.chomp.to_i
array << n1

prompt "number?"
n2 = gets.chomp.to_i
array << n2

prompt "number?"
n3 = gets.chomp.to_i
array << n3

prompt "number?"
n4 = gets.chomp.to_i
array << n4

prompt "number?"
n5 = gets.chomp.to_i
array << n5 

prompt "6th number?"
n6 = gets.chomp.to_i

if array.include?(n6)
  puts "the number #{n6} appears in #{array}"
else
  puts "the number #{n6} does not appear in #{array}"
end

#REVIEW: good.
