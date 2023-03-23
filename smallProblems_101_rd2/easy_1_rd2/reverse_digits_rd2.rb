# PROMPT: write a method that takes a positive integer as an argument
# and returns that number with its digits reversed

# D/A
# to_s reverse to_i

def reversed_numbers(num)
  num.to_s.reverse.to_i
end

p reversed_numbers(12345)
p reversed_numbers(1234567890)
p reversed_numbers(12213)
p reversed_numbers(456)
p reversed_numbers(12000)
p reversed_numbers(12003)
p reversed_numbers(1)

# REVIEW: perfect
