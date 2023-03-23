# input: odd integer, n
# output: 4 pointed diamond made up of * -> nxn grid
# "display a diamond" ... is this output or return?? unclear
# going to treat it as output 


def diamond(n)
  di = '*'
  sp = ' '

  1.upto(n) do |i|
    if i.odd?
      num = (n - i) / 2
      puts (sp * num) + (di * i) + (sp * num)
    else
      next
    end
  end

  (n-2).downto(1) do |i|
    if i.odd?
      num = (n-i) / 2
      puts (sp * num) + (di * i) + (sp * num)
    else
      next
    end
  end
end

diamond(9)
diamond(7)
diamond(5)

# review: works well and LS indeed was looking for output using puts.
# LS answer below for reference
# much of their answer is similar, although they used the .center method to
# .. center each line of stars within the n grid rather than account for spaces

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond_LS(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end
