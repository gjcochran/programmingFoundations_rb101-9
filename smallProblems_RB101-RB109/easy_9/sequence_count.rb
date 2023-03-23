# Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number.

# You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.

# E
# sequence(5, 1) == [1, 2, 3, 4, 5]
# sequence(4, -7) == [-7, -14, -21, -28]
# sequence(3, 0) == [0, 0, 0]
# sequence(0, 1000000) == []

# D/A
# -7*1, -7*2, -7*3 etc...
# count must be > 0

def sequence(count, num)
  result = []
  if count.positive?
    loop do
      result.unshift(count * num)
      count -= 1
      break if count.zero?
    end
  else
    []
  end
  result
end

p sequence(5, 1)
p sequence(4, -7)

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []

# mine works, although LS solved this in 2 ways, both different. typing them out below...

def sequence_v2(count, first)
  sequence = []
  number = first 

  count.times do
    sequence << number 
    number += first 
  end

  sequence 
end

p sequence_v2(5, 1) == [1, 2, 3, 4, 5]
p sequence_v2(4, -7) == [-7, -14, -21, -28]
p sequence_v2(3, 0) == [0, 0, 0]
p sequence_v2(0, 1000000) == []

def sequence_v3(count, first)
  (1..count).map { |el| el * first } # another example of LS not converting a range to an array before iterating... must not have to
end

p sequence_v3(5, 1) == [1, 2, 3, 4, 5]
p sequence_v3(4, -7) == [-7, -14, -21, -28]
p sequence_v3(3, 0) == [0, 0, 0]
p sequence_v3(0, 1000000) == []