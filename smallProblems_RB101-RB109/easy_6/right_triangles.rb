# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

# triangle(5)

#     *
#    **
#   ***
#  ****
# *****

# triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********

#  * # 1 space + 1 star
# **

# range (1..n)
# irb(main):003:0> n = 5
# irb(main):004:0> (1..n).to_a

# => [1, 2, 3, 4, 5]
# irb(main):007:0> arr.each { |el| puts el }
# 1
# 2
# 3
# 4
# 5
# irb(main):009:0> puts "*" * 5
# *****

# def triangle(num)
#   arr = (1..num).to_a
#   counter = 0
#   right_counter = arr.size
 
#   while counter <= arr.length
#     a = ' ' * right_counter 
#     b = '*' * arr[counter]
#     counter += 1
#     right_counter -= 1
#     puts a + b
#   end
  
# end

# # triangle(5)
# triangle(9)

## ah! it prints out the triangle perfectly, but with a type error message for line 47 "in `*': no implicit conversion from nil to integer"

# LS answer below...

def triangles(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars +=1 
  end
end

triangles(9)

