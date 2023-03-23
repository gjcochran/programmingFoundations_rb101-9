# Write a method that displays an 8-pointed star in an nxn grid, where n is an odd integer that is supplied as an argument to the method. The smallest such star you need to handle is a 7x7 grid.

# smallest will be 7x7, only odd grids (ie no 8x8)

# E:
# star(7)

# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  *

# 7 rows, 7 columns
# *ss*ss*
# s*s*s*s
# ss***ss
# *******
# ss***ss
# s*s*s*s
# *ss*ss*

# E2:
# star(9)

# *   *   *
#  *  *  *
#   * * *
#    ***
# *********
#    ***
#   * * *
#  *  *  *
# *   *   *

# 9 rows, 9 columns
# *sss*sss*
# s*ss*ss*s
# ss*s*s*ss
# sss***sss
# *********
# sss***sss
# ss*s*s*ss
# s*ss*ss*s
# *sss*sss*

# 11 rows, 11 columns

# *ssss*ssss*
# s*sss*sss*s
# ss*ss*ss*ss
# sss*s*s*sss
# ssss***ssss # sp = (11-3)/2 ; ' '*sp + '*'*3 + ' '*sp
# *********** # '*'*11
# ssss***ssss # sp = (11-3)/2 ; ' '*sp + '*'*3 + ' '*sp
# sss*s*s*sss
# ss*ss*ss*ss
# s*sss*sss*s
# *ssss*ssss*

def star(n)
  sp = (n-3)/2
  rows = n/2
  counter = 0
  loop do
    puts (' ' * counter) + '*' + (' ' * sp) + '*' + (' ' * sp) + '*' + (' ' * counter)
    counter += 1
    sp -= 1
    break if counter == rows
  end
  puts '*' * n
  cup = 0
  counter = (n-3)/2
  loop do
    puts (' ' * counter) + '*' + (' ' * cup) + '*' + (' ' * cup) + '*' + (' ' * counter)
    counter -= 1
    cup += 1
    break if counter < 0
  end
end

p star(7)
p star(9)
p star(11)

# my solution worked well, although is definitely not very efficient. typed out LS solution below to compare to

def print_row(grid_size, distance_from_center)
  number_of_spaces = distance_from_center - 1
  spaces = ' ' * number_of_spaces
  output = Array.new(3, '*').join(spaces)
  puts output.center(grid_size)
end

def star_LS(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(1) { |distance| print_row(grid_size, distance) }
  puts '*' * grid_size
  1.upto(max_distance) { |distance| print_row(grid_size, distance) }
end

p star_LS(9)

# irb(main):003:0> distance_from_center = 2
    # => 2
    # irb(main):004:0> number_of_spaces = distance_from_center - 1
    # => 1
    # irb(main):005:0> spaces = ' ' * number_of_spaces
    # => " "
    # irb(main):006:0> output = Array.new(3, '*').join(spaces)
    # => "* * *"
    # irb(main):007:0> output.center(9)
    # => "  * * *  "
