# input: 3 integers -> representing 3 angles of triangle side contacts
# output: type of triangle
# going to use a case statement this time rather than a nested unless/if 
# will use reduce rather than sum
# from last problem, clearly the only edge case invalid angle will be 0 (ie no negatives given)

def triangle(a1, a2, a3)
  angles = [a1, a2, a3]
  obtuse_check = angles.select { |a| a > 90 }

  case
  when angles.reduce(:+) != 180 || angles.include?(0)
    :invalid
  when angles.include?(90)
    :right
  when obtuse_check.any?
    :obtuse
  else
    :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid

# good. LS similar. same approach.
# only difference was in handling determination of acutes and obtuse
# within case, they put...
# `when angles.all? { |a| a < 90 }
#    :acute
#  else
#    :obtuse`
