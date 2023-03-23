# input: +integer
# output: sum of input's digits

def sum(int)
  int.to_s.chars.map(&:to_i).sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# great. same as LS answer, although they preferred reduce(:+) rather than sum method
