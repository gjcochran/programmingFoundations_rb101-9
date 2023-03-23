# Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# E
# word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# P
# am comparing every word in input sentence string to a data structure and replacing written numbers with string numbers

# D/A
# hash ex. {'five': '5'}
# sentence string to array
# map method on array
# return array to string
# Q -- how to handle punctuation...? regex works for test but then how to add punctuation back in... figured out

DIGITS = {
  'zero' => '0',
  'one' => '1',
  'two' => '2',
  'three' => '3',
  'four' => '4',
  'five' => '5',
  'six' => '6',
  'seven' => '7',
  'eight' => '8',
  'nine' => '9'
}

def word_to_digit(sentence)
  arr = sentence.split
  transformed = arr.map do |word|
    test_word = word.gsub(/[^a-zA-Z]/, '')
    DIGITS.keys.include?(test_word) ? DIGITS[test_word] + word.gsub(/[a-zA-Z]/, '') : word
  end
  transformed.join(' ')
end

p word_to_digit('Please call menine at five.. five five! one two three four. Thanks.')

# my solution worked well, although is a bit clunky now that i see LS solution. copied below for reference

# DIGIT_HASH = {
#   'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
#   'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
# }.freeze

# def word_to_digit(words)
#   DIGIT_HASH.keys.each do |word|
#     words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
#   end
#   words
# end
