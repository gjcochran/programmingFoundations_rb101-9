# input: 3 integers -> representing side lengths of triangle
# output: type of triangle || invalid
# rules to triangle:
#   :valid -- sum of two shortest sides > length of longest side
#             all sides > 0
#   :equilateral -- all sides equal
#   :isosceles -- 2 sides equal
#   :scalene -- 3 sides different

def triangle(n1, n2, n3)
  sides = [n1, n2, n3]
  max = sides.max
  length_test = sides.select { |n| n < 1 }
  max_test = sides.sort[0..-2]

  unless max_test.sum <= max || length_test.any?
    if n1 == n2 && n2 == n3
      :equilateral
    elsif n1 == n2 || n2 == n3 || n1 == n3
      :isosceles
    else
      :scalene
    end
  else
    :invalid
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid

# good.
# LS similar, they also put all inputs into an array and found max of
# the difference was they used a case statement
# with first when of case handling invalids
# to determine invalid options...
# `when 2 * max >= sides.reduce(:+), sides.include?(0)`
