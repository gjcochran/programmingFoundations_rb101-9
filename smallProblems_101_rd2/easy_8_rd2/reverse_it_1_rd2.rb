# input: string
# output: string -> input in reverse order (words not chars)

# A 
# str.split
# str.size-1.downto0 
# arr[i]

def reverse_sentence(str)
  arr = str.split
  result = []
  (arr.size-1).downto(0) do |i|
    result << arr[i]
  end
  result.join(' ')
end

p reverse_sentence('Hello World')
p reverse_sentence('Reverse these words')
p reverse_sentence('')
p reverse_sentence('    ')

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

# review: okay, my solution certainly worked but did too much!
# could have just used the Array#reverse method...
# LS answer:

def rev_LS(str)
  str.split.reverse.join(' ')
end
