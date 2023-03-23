# PROMPT: 
# input: non-empty string argument
# return: middle char or chars of argument (1 if odd, 2 if even)

def center_of(str)
  mid = str.size / 2 
  str.size.even? ? str.slice(mid-1..mid) : str.slice(mid)
end

p center_of('I love ruby')
p center_of('Launch School')
p center_of('Launch')
p center_of('x')
p center_of('Launchschool')

# REVIEW:
# same as LS. they used `[]` rather than `slice` but achieves same purpose
# `str[mid - 1, 2]` rather than str.slice(mid-1..mid)
