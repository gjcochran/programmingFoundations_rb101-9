# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

# You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

# E
# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'

# D/A
# test 1
#irb(main):001:0> string = 'Oh what a wonderful day it is'
# => "Oh what a wonderful day it is"
# irb(main):002:0> array = string.split
# => ["Oh", "what", "a", "wonderful", "day", "it", "is"]
# irb(main):003:0> char_array = array.map { |el| el.split(//) }
# => [["O", "h"], ["w", "h", "a", "t"], ["a"], ["w", "o", "n", "d", "e", "r",...
# irb(main):004:0> char_array
# => [["O", "h"], ["w", "h", "a", "t"], ["a"], ["w", "o", "n", "d", "e", "r", "f", "u", "l"], ["d", "a", "y"], ["i", "t"], ["i", "s"]]
# irb(main):064:0> char_array[0].first
# => "O"
# irb(main):065:0> char_array[3].last
# => "l"

# test 2 (clone array)
# irb(main):095:0> a
# => ["w", "h", "a", "t"]
# irb(main):096:0> b
# => ["w", "h", "a", "t"]
# irb(main):097:0> a.pop
# => "t"
# irb(main):098:0> a.push(b.first)
# => ["w", "h", "a", "w"]
# irb(main):099:0> a.shift
# => "w"
# irb(main):100:0> a.unshift(b.last)
# => ["t", "h", "a", "w"]

# test 3
# irb(main):109:0> ["Oh", "what", "a", "wonderful", "day", "it", "is"].join(' ')
# => "Oh what a wonderful day it is"
# irb(main):111:0> ["O", "h"].join('')
# => "Oh"

def swap(str)
  arr = str.split.map { |el| el.split(//) }
  arr2 = arr.map do |a|
    b = a.clone
    a.pop
    a.push(b.first)
    a.shift
    a.unshift(b.last)
  end
  arr3 = arr2.map { |el| el.join('') }
  arr3.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Oh what a wonderful day it is') 
p swap('Abcde') == 'ebcdA'
p swap('Abcde') 
p swap('a') == 'a'
p swap('a') 

# LS answer is simpler, per usual

# def swap_first_last_characters(word)
#   word[0], word[-1] = word[-1], word[0]
#   word
# end

# def swap(words)
#   result = words.split.map do |word|
#     swap_first_last_characters(word)
#   end
#   result.join(' ')
# end

# word[0], word[-1] = word[-1], word[0] # this line!
# #explanation:
# "The tricky part here is actually swapping the first and last characters of each word. Because of the mild trickiness, we use a separate method. It uses this common idiom:
# a, b = b, a

# to exchange the values of a and b. In our method, a is the first letter of the word, and b is the last letter of the word. When Ruby sees something like this, it effectively creates a temporary array with the values from the right side ([b, a]), and then assigns each element from that array into the corresponding named variable:
# a = b   # b is value from position 0 of temporary array (original value of b)
# b = a   # a is value from position 1 of temporary array (original value of a)

# Looked at another way, this is equivalent to:
# temporary = [b, a]
# a = temporary[0]
# b = temporary[1]
# "

