# input: 2 integers (count, first_num)
# output: Array -> arr.size == count ; arr[0] == first_num
#   multiples of first_num
#   ex1: count = 5; 1, 2, 3, 4, 5
#   ex2: count = 4; 7, 14, 21, 28

def sequence(count, num)
  arr = []
  1.upto(count) do |i|
    arr << num * i
  end
  arr
end

p sequence(5, 1)
p sequence(4, -7)
p sequence(3, 0)
p sequence(0, 1000000)
p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []

# good. there is a more simple option available tho, per LS answer:
# `(1..count).map { |val| val * num }`
