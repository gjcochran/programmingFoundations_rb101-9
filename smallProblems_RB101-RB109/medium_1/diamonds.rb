# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

# E
# diamond(1)

# *

# diamond(3)

#  *
# ***
#  *

# diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *

# P
# asterick = '*' (string)
# 1, 3, 5, 7, 9
# starts at 1 and goes up by 2 until hit input, then goes back down to 1
# for diamond(9), there are 4 spaces, 1 *, then 4 more spaces 
#   7... 3 spaces, 1 *, 3 more spaces 
#   5... 2 spaces, 1 *, 2 more spaces
# using integer math, 9 / 2 = 4

# D/A
# spaces = (input - astericks) / 2
# astericks = 1 to start then += 2
# could make an array of 1..input_argument (can use step method to have every other https://ruby-doc.org/core-2.7.1/Range.html#method-i-step)

def diamond(param)
  arr_up = (1..param).step(2).to_a
  
  arr_up.each do |num|
    space_num = (param - num) / 2
    spaces = ' ' * space_num
    stars = '*' * num 
    puts "#{spaces}#{stars}#{spaces}"
  end

  arr_up.pop
  arr_down = arr_up.reverse
  arr_down.each do |num|
    space_num = (param - num) / 2
    spaces = ' ' * space_num
    stars = '*' * num 
    puts "#{spaces}#{stars}#{spaces}"
  end
end

diamond(9)
# diamond(3)
# diamond(5)
# diamond(1)

# mine words well, LS solution copied below for reference

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond_v2(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance) { |distance| print_row(grid_size, distance) }
end

diamond_v2(9)