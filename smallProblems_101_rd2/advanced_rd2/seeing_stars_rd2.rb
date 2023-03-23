# input: integer (n) -> for nxn grid
#   odd
#   >= 7
# output: display an 8-pointed star
# format:
# n / 2 lines (each with 3 dots)
#   spaces = (n - 3)
#   ex. for first 3 lines on n = 7
#   now two spaces between each dot
#   now one space between each dot
#   (spaces/2)dots(spaces/2)
# one line (with n dots)
# n / 2 lines (each w 3 dots) --> mirrors first n / 2 lines
#

def star(n)
  num = n / 2 - 1
  spaces = n - 3
  s = ' '
  st = '*'

  num.downto(0) do |i|
    out = num - i
    puts (s * out) + st + (s * i) + st + (s * i) + st + (s * out)
  end
  
  puts st * n

  0.upto(num) do |i|
    out = num - i
    puts (s * out) + st + (s * i) + st + (s * i) + st + (s * out)
  end
end

#star(7)
#star(9)

# review: solution works well. again: LS used the center method
# typing out LS answer for practice
# irb(main):012:0> sp = ' ' * 2
# => "  "
# irb(main):013:0> output = Array.new(3, '*').join(sp)
# => "*  *  *"
# the join with varying spaces sizes in between elements aspect is clever.
# center method used so that dont have to deal with number of outer spaces, like in my solution

def print_row(n, num)
  num_sp = num - 1
  sp = ' ' * num_sp
  output = Array.new(3, '*').join(sp)
  puts output.center(n)
end

def star_LS(n)
  max = n / 2
  max.downto(1) { |num| print_row(n, num) }
  puts '*' * n
  1.upto(max) { |num| print_row(n, num) }
end

star_LS(7)
star_LS(9)
