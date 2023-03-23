# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.

# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# word_sizes('') == {}

def word_sizes(str)
  arr = str.split
  result = arr.group_by { |el| el.count('a-zA-Z') }.transform_values(&:size)
  result.sort.to_h
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

# works

# LS answer quite a bit different, typing out below for reference

def word_sizes_v2(str)
  result = Hash.new(0)
  str.split.each do |word|
    clean_word = word.delete('^A-Za-z')
    result[clean_word.size] += 1
  end
  result
end

p word_sizes_v2('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes_v2('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes_v2("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes_v2('') == {}

