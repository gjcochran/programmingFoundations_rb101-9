# input: integer
# output: integer -> difference between (1..n) ** 2 - (1..n) [each ** 2] . sum

def sum_square_difference(n)
  sub = (1..n).map { |el| el **2 }.reduce(:+)
  (1..n).sum ** 2 - sub
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150

# good. prefer my answer to LS (pasted for reference):

def sum_square_difference_LS(n)
  sum = 0
  sum_of_squares = 0

  1.upto(n) do |value|
    sum += value
    sum_of_squares += value**2
  end

  sum**2 - sum_of_squares
end
