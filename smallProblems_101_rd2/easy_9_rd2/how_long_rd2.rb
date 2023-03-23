# input: string
# output: array of strings -> each word from input as substring + its word length

def word_lengths(str)
  str.split.map { |el| %(#{el} #{el.size}) }
end

p word_lengths("cow sheep chicken")
p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []

# good.
# LS answer below for reference (very similar but using concatenation rather than interpolation)

def lengths_LS(str)
  str.split.map { |w| w + ' ' + w.length.to_s }
end

# they had a second option where they used interpolation...
# `str.split.map { |w| "#{w} #{w.length}" }`
