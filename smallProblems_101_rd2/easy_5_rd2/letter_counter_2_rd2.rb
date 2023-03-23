# exclude non-letters when calc'ing word.size

def word_sizes(str)
  arr = str.split.map { |w| w.scan(/\w/).join }
  arr.each_with_object ({}) { |el, h| h[el.size] = arr.count { |i| i.size == el.size }}
end

p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?")
p word_sizes('')

# review: my solution works, again LS used a String#delete method when i used scan(regex)

def ws_LS(str)
  counts = Hash.new(0)
  str.split.each do |w|
    clean_word = w.delete('^A-Za-z')
    counts[clean_word.size] += 1
  end
  counts
end 
