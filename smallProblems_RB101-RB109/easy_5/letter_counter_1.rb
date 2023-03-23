# Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

# output hash = { letter_quantity_in_word => number_of_words_with_this_letter_quantity }
# E
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}

# D/A
# use String#split to turn into an array
# then iterate over the array
# each element in array -- size of el is analyzed with String#size


# def word_sizes(str)
#   result = {}
#   arr = str.split
#   arr.map do |word| 
#     counter = 1
#     result[word.length] = counter
#     counter += 1 if result.key?(word.length)
#   end
#   result.sort.to_h
# end

# p word_sizes("Four score and seven.")
# p word_sizes("Hey diddle diddle, the cat and the fiddle!")

#=>
# {3=>1, 4=>1, 5=>1, 6=>1}
# {3=>1, 6=>1, 7=>1}

# am very close but cant figure out how to set the value to be the dynamic number of occurrences of words of key length

# https://ruby-doc.org/core-3.1.2/Enumerable.html#method-i-group_by

def word_sizes(str)
  arr = str.split
  result = arr.group_by { |el| el.length }.transform_values(&:size)
  result.sort.to_h
end

p word_sizes("Four score and seven.")
p word_sizes("Hey diddle diddle, the cat and the fiddle!")
#==> 
# {3=>1, 4=>1, 5=>1, 6=>1}
# {3=>5, 6=>1, 7=>2}

# mine worked, but took me a long time to solve and ended up having to use two methods that was previously unfamilar with (group_by && tranform_values). good to know how to use them now, but also not realistic for test environment. turns out i just had to set the value to += 1 within an iterator method! so simple smh.

# LS answer below
def word_sizes_v2(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end
p word_sizes("Hey diddle diddle, the cat and the fiddle!")