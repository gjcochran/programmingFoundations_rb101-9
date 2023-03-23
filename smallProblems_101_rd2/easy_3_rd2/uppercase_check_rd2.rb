# all alphabetic chars are uppercase ... return true
# ignore non-alphabetic chars

def uppercase?(str)
  alphas = str.scan(/[a-zA-Z]/)
  alphas == alphas.map(&:upcase)
end

p uppercase?('t')
p uppercase?('T')
p uppercase?('Four Score')
p uppercase?('FOUR SCORE')
p uppercase?('4SCORE!')
p uppercase?('')

# works but missed that can simply write `str == str.upcase`
