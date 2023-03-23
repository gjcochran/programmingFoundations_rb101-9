# input: string of words
# output: string of words (first and last letter of each word swapped)

def swap(str)
  arr = str.split
  arr.map { |sub| sub.size > 1 ? sub[-1] + sub[1..-2] + sub[0] : sub }.join(' ')
end

p swap('Oh what a wonderful day it is')
p swap('Abcde') 
p swap('a') 

# works
# LS answer below
def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap_LS(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end
