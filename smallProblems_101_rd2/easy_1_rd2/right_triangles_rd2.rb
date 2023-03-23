# PROMPT:
# write a method that takes a positive integer, `n`, as an argument
# and displays a right triangle whose sides each have `n` stars
# the hypotenuse of the triange should have one end at the lower-left of the triangle and other at upper-right

def triangle(n)
  n.times do |i|
    puts "#{' ' * (n-i)}" + "#{'*' * i}"
  end
  puts "#{'*' * n}"
end

triangle(5)
triangle(9)

# REVIEW:
# yet another one where my solution works but is not quite the same as LS

def triangle_LS(n)
  spaces = n - 1
  stars = 1

  n.times do |i|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

