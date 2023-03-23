# original

def neutralize(sentence)
  words = sentence.split(' ')
  words.each do |word|
    words.delete(word) if negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

# ------------ debugged --------------------
# the each method is not the best choice for this. going to change to delete_if

def neutralize_v2(sentence)
  words = sentence.split(' ')
  words.delete_if do |word|
   negative_v2?(word)
  end

  words.join(' ')
end

def negative_v2?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize_v2('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

# LS explanation and answer below (almost exactly the same as mine, except the used reject! rather than delete_if)
# While iterating over an array, avoid mutating it from within the block. 

# def neutralize(sentence)
#   words = sentence.split(' ')
#   words.reject! { |word| negative?(word) }
#   words.join(' ')
# end