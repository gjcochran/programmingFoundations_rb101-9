# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

# E
# multisum(3) == 3 # 3
# multisum(5) == 8 # 3 + 5 = 8
# multisum(10) == 33 # 3 + 5 + 6 + 9 + 10 = 33
# multisum(1000) == 234168

# D / A
# Range#% method
# irb(main):007:0> b = []
# => []
# irb(main):008:0> (0..21).%(3) { |el| b.push(el) }
# => 0..21
# irb(main):009:0> b
# => [0, 3, 6, 9, 12, 15, 18, 21]
# irb(main):010:0> c = []
# => []
# irb(main):011:0> (0..22).%(3) { |el| c.push(el) }
# => 0..22
# irb(main):012:0> c
# => [0, 3, 6, 9, 12, 15, 18, 21]

# arr = []
# (0..input).%(3) { |num| arr << num }
# (0..input).%(5) { |num| arr << num }
# ex. input: 22
# irb(main):016:0> arr = []
# => []
# irb(main):017:0> (0..22).%(3) { |num| arr << num }
# => 0..22
# irb(main):018:0> (0..22).%(5) { |num| arr << num }
# => 0..22
# irb(main):019:0> arr
# => [0, 3, 6, 9, 12, 15, 18, 21, 0, 5, 10, 15, 20]
# irb(main):020:0> sum = 0
# => 0
# irb(main):021:0> arr.each { |num| sum+= num }
# => [0, 3, 6, 9, 12, 15, 18, 21, 0, 5, 10, 15, 20]
# irb(main):022:0> sum
# => 134

# C
# def multisum(int)
#   arr = []
#   sum = 0

#   (0..int).%(3) { |num| arr << num }
#   (0..int).%(5) { |num| arr << num }

#   arr.each { |num| sum += num }
#   sum
# end

# # test
# p multisum(3) == 3
# p multisum(5) == 8
# p multisum(10) == 33
# p multisum(1000) == 234_168
# p multisum(1000)
# p multisum(20)

# failed... didn't account for duplicates!
# use .uniq

# def multisum(int)
#   arr = []
#   sum = 0

#   (0..int).%(3) { |num| arr << num }
#   (0..int).%(5) { |num| arr << num }

#   arr.uniq.each { |num| sum += num }
#   sum
# end

# # test
# p multisum(3) == 3
# p multisum(5) == 8
# p multisum(10) == 33
# p multisum(1000) == 234_168
# p multisum(1000)
# p multisum(20)

# this solution worked! LS answer was quite a bit different, pasted below:
# def multiple?(number, divisor)
#   number % divisor == 0
# end

# def multisum(max_value)
#   sum = 0
#   1.upto(max_value) do |number|
#     if multiple?(number, 3) || multiple?(number, 5)
#       sum += number
#     end
#   end
#   sum
# end

# simplification of my method solution using En#inject
def multisum(int)
  arr = []

  (0..int).%(3) { |num| arr << num }
  (0..int).%(5) { |num| arr << num }

  arr.uniq.inject(:+)
end

# test
p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234_168
p multisum(1000)
p multisum(20)
