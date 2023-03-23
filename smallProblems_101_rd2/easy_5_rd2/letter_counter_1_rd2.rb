# input: string
# output: hash, number of words of different sizes

def word_sizes(str)
  arr = str.split
  result = arr.each_with_object({}) { |el, h| h[el.size] = arr.count { |i| i.size == el.size } }
end

p word_sizes('four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?")
p word_sizes('')

# review: my solution worked but is not quire as simple as LS answer


def word_sizes_LS(str)
  counts = Hash.new(0)
  str.split.each { |w| counts[w.size] += 1 }
  counts
end

p word_sizes_LS('four score and seven.')

# test
# does not work...

#def sizes(str)
#  str.split.each_with_object({}) { |el, h| h[el.size] += 1 }
#end

#p sizes('four score and seven.')


