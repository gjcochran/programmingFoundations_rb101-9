# create a method that takes a positive integer and returns 
# the next bigger number formed by the same digits

# given examples:
# 12 -> 21
# 513 -> 531
# 2017 -> 2071
# return -1 if no number bigger

# my answer...
# input: integer
# output: integer
#   either
#     same digits, one number greater
#     -1 if no number greater
# how?
#   - use digits method to separate into array of digits
#   - combination method with argument of size of input
#   - push all combinations to eval array, join and to_i each combo before pushing
#   - sort_by greater than input integer
#   - first index of sorted array, else -1 if empty
# questions?
#  - none

def next_number(integer)
  digits = integer.digits
  eval_array = []
  digits.permutation(digits.size) { |c| eval_array << c.join.to_i }
  larger_nums = eval_array.select { |n| n > integer }.sort
  larger_nums.empty? ? -1 : larger_nums.first
end

p next_number(12)
p next_number(513)
p next_number(111)
p next_number(123456789)

# solved in 10 mins, while speaking out loud. 
# while testing, realized that permutation and select
# were more appropritate methods than combination and sort_by
# plus had to sort the larger_nums array
# last test was slow, but still passed within a few secs so think is good enough
# pleased, solved this much more quickly and more simply than LS example (watched after)

####

# video answer below

# input - integer
# output - integer, -1 if no valid number is found
# eg 12, digits => [1, 2], [1, 2], [2, 1] = 21
# ... she did this multiple times while talking it out

# all combinations, sort them, adjacent to the current one
# loop goes from the current number up to max number, break if
# the number contains the current digits
# algo:
# max number = sort the digits, find the max num
# current num ... max num, break if num contains all the digits

def next_bigger_num(input)
  max = max_num(input)

  (input + 1..max).to_a.each do |num|
    return num if num.matches?(num, input)  
  end
  return -1
end

def matches?(num, input)
  num.to_s.chars.sort == input.to_s.chars.sort
end

def max_num(input)
  input.to_s.chars.sort.reverse.join.to_i
end
