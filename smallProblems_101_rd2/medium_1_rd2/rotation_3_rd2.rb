# write both previous rotate methods from memory
# then
# rotate input.size times rotating less and less chars each time (leftmost become fixed in order)

def rotate(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_right(int, n)
  all = int.to_s.chars
  all[-n..-1] = rotate(all[-n..-1])
  all.join.to_i
end

# tests
p rotate_right(735291, 6)
p rotate_right(352917, 5)
p rotate_right(329175, 4)
p rotate_right(321759, 3)
p rotate_right(321597, 2)
#=> 321579

def max_rotation(num)
  working = num
  #p working
  arr = num.to_s.chars
  (arr.size).downto(2) do |i|
    working = rotate_right(working, i)
    #p working
  end
  working
end

p max_rotation(735291)
p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

# review: great, LS had same answer.
