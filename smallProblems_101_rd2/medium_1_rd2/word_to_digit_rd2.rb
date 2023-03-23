# input: string (sentence)
# output: string (convert word digits to digits)
# ex. zero => 0

# A
# %w(zero one, etc)
# input string.split.map
# if %w array matches substring, then replace substring with %w index.to_s
# how to handle punctuation?? ex. `four.`
#

def word_to_digit(sentence)
  ref = %w(zero one two three four five six seven eight nine)
  sentence.split.map do |word| 
    letters = word.scan(/\w/).join
    punct = word.split(/\w/).join  
    ref.include?(letters) ? (ref.index(letters).to_s + punct) : (letters + punct)
  end.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')
p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# good. works. the edge case i can think of where it doesnt work (for my and LS answers are when digits are within another word! ex. bones)

# LS answer below:
DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit_LS(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  words
end
