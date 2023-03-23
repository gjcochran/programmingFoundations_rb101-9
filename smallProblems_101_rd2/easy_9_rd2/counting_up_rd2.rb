# input: integer
# output: array of integers %w(1..input)
# rules: input > 0

def sequence(int)
  (1..int).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

# correct. LS the same.
# further... neg args... could just do ternary with if neg then
# (arg..-1).to_a.reverse so would be, for example [-1, -2, -3, -4, -5]
