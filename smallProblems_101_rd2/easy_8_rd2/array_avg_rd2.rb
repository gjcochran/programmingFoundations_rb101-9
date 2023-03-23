# input: array of integers
# output: integer -> average of input
# rules: input.size >= 1 && integers in input always > 0
# can't use Array#sum method

# A
# won't use reduce/inject either as similar to sum
# sum = 0
# sum += i (each iteration)
# sum / arr.size

def average(arr)
  sum = 0
  arr.each { |el| sum += el }
  sum / arr.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# review: good. funnily enough, LS did make it easy and use reduce method..
# 2 options from LS typed out below, for reference:

def avg_LS_v1(arr)
  sum = arr.reduce { |sum, number| sum + number }
  sum / arr.count
end

def avg_LS_v2(arr)
  arr.reduce(:+) / arr.count
end

p avg_LS_v1([1, 5, 87, 45, 8, 8])
p avg_LS_v2([1, 5, 87, 45, 8, 8])
