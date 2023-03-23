# input: +integer
# output: list of input's digits
# ex. 12345 => [1, 2, 3, 4, 5]

# A - .to_s.chars.mapto_i

def digit_list(num)
  num.to_s.chars.map(&:to_i)
end

p digit_list(12345)
p digit_list(7)
p digit_list(357290)
p digit_list(444)

# good, answer was same as LS answer.
