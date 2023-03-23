# input: string
# output: remove all duplicate chars w/o using squeeze method
#
# D/A - 
# .chars method
# each with index method
#   add to return array unless char == prev char 
# the issue will be how to do this without getting a nil error || not adding first char if last char is same
# 

def crunch(str)
  return str[0] if str.size == 1
  arr = str.chars
  result = arr.select.with_index { |el, i| el != arr[i-1] }
  result.unshift(str[0]) if str[0] == str[-1]
  result.join
end

p crunch('ddaaiillyy ddoouubbllee')
p crunch('4444abcabccba')
p crunch('ggggggggggggggg')
p crunch('a')
p crunch('')

# works, although could be simplified
def crunch_LS(text)
  index = 0
  crunch_text = ''
  while index <= text.length - 1
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end
