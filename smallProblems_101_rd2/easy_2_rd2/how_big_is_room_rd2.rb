# ask user for length and width in meters
# display the area of room in sq meters and sq ft
# 1 sq mtr = 10.7639 sq ft

def prompt(str)
  puts "=> #{str}"
end

def area_mtrs(l, w)
  l * w 
end

def area_ft(area_mtrs)
  area_mtrs * 10.7639
end

prompt "Enter the room length (meters):"
l = gets.chomp.to_i
prompt "Enter the room width (meters):"
w = gets.chomp.to_i
prompt "the area of the room is #{area_mtrs(l, w)} sq mtrs ie #{area_ft(area_mtrs(l, w))} sq ft"


# REVIEW:
# works. items to consider: saving conversion bt mtrs to feet as a constant variable.
#                           using to_f rather than to_i then rounding solution to 2 decimals, for precision

