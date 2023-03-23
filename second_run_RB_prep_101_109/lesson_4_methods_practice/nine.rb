# Write your own version of the rails titleize implementation.

def titleize(str)
  str.split.map(&:capitalize).join(' ')
end

p titleize('the flintstones rock')

# LS answer was the same as mine
