# Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.
# Note: 1 square meter == 10.7639 square feet
# Do not worry about validating the input at this time.

# P
# input: using gets... length & width
# output: sq ft and sq meters
# dont need to validate input, therefore dont need to put in a loop and present error messages to user

# E
# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f
puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area_meters = length * width
area_feet = area_meters * 10.7639

puts "The area of the room is #{area_meters} square meters (#{area_feet} square feet)"

# correct, although missing some best practices

# 1 -- set 10.7639 to a CONSTANT
# 2 -- round to 2 decimal places the variables area_meters and area_feet
# ex. area_meters = (length * width).round(2)
# area_feet = (area_meters * CONVERSION_CONSTANT).round(2)
