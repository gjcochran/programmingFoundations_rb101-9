# input: words array
# output: printed out arrays grouped by annagram words
# ex. 
# ['demo', 'dome', 'mode']
# etc...

# A
# string.chars.sort will be how compare
# going to pretend that this will handle more arrays and str.downcase everything
# want to iterate through entire input array and for each iteration compare 
# ... that current element to every other array element
# could do this with two loops
# but... should be able to do with enumerable methods
# how to deal with duplicates?? could mutate array on each pass through hmm


def anagram(arr)
  result = []
  working = []
  arr.each do |str|
    working << str
    #p "working #{working}"
    arr.each do |sub| 
      working << sub if str.downcase.chars.sort.join == sub.downcase.chars.sort.join
     # p "working #{working} and str #{str}"
    end
    result << working.map { |el| el } if working.size > 1 
    working.clear
  end
  result = result.map(&:sort).map(&:uniq).sort.uniq
  result.each { |sub| p sub }
end



words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

p anagram(words)

# ["demo", "dome", "mode"]
# ["diet", "edit", "tide", "tied"]
# ["evil", "live", "veil", "vile"]
# ["flow", "fowl", "wolf"]
# ["neon", "none"]
#=> [["demo", "dome", "mode"], ["diet", "edit", "tide", "tied"], ["evil", "live", "veil", "vile"], ["flow", "fowl", "wolf"], ["neon", "none"]]


# review. works, but definitly isn't simple.
# LS answer was clever, used a hash which i see now was a more suited object to this problem

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each_value do |v|
  puts "------"
  p v
end
