# string
# string -> words from input that contain >= 5 chars reversed
# only alphanum

def reverse_words(str)
  arr = str.split
  arr.map { |el| el.size >= 5 ? el.reverse : el }.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

# good, prefer my answer to LS. written below for reference:

def reverse_words_LS(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end
