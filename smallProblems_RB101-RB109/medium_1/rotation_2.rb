# Write a method that can rotate the last n digits of a number
# Note that rotating just 1 digit results in the original number being returned.
# You may use the rotate_array method from the previous exercise if you want. (Recommended!)
# You may assume that n is always a positive integer.

# E
# rotate_rightmost_digits(735291, 1) == 735291
# rotate_rightmost_digits(735291, 2) == 735219
# rotate_rightmost_digits(735291, 3) == 735912
# rotate_rightmost_digits(735291, 4) == 732915
# rotate_rightmost_digits(735291, 5) == 752913
# rotate_rightmost_digits(735291, 6) == 352917

# D/A
# going to separate number into separate digits that can iterate over using input.to_s.chars 
# use map to iterate over this new array
# convert n to a negative index
# if a number is at that index or greater, then apply rotate_array method, otherwise return el
# join and to_i

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(number, n)
  arr = number.to_s.chars
  result = []
  holding = []
  n = -n
  counter = -1
  loop do
    if counter >= n
      holding << arr[counter]
    else
      result << arr[counter]
    end
    counter -= 1
    break if counter.abs > arr.size
  end
  result.reverse!
  holding.reverse!
  result.push(rotate_array(holding))
  result.join.to_i
end

p rotate_rightmost_digits(735291, 2)
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

# the solution above works perfectly, but is pretty clunky.

# LS answer used many of same principles, but is significantly smoother and simpler

def rotate(num, n)
  all_digits = num.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

p rotate(735291, 2)

# explanation
# all_digits[-n..-1] returns the last n elements of the all_digits array. It's a handy shorthand to know about, as you're likely to be using it more than you might think.

# We pass all_digits[-n..-1] to our rotate_array method from the previous exercise, and that method returns a new array with the digits rotated as needed.

# We then assign the return value of rotate_array to all_digits[-n..-1]. When an expression like this appears on the left side of an assignment, it means, "replace the last n elements with the values to the right of the equal sign". And that's exactly what happens here: we replace the last n digits with the rotated digits"


# irb(main):006:0> num = 735291
# => 735291
# irb(main):007:0> n = 2
# => 2
# irb(main):008:0> all_digits = num.to_s.chars
# => ["7", "3", "5", "2", "9", "1"]
# irb(main):009:0> all_digits[-n..-1]
# => ["9", "1"]