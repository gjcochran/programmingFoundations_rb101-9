# Write a program that reads the content of a text file and then prints the longest sentence in the file based on number of words. Sentences may end with periods (.), exclamation points (!), or question marks (?). Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word. You should also print the number of words in the longest sentence.

# D/A
# break a text into sentences
    # irb(main):028:0> str
    # => "oh okay. let us see. how do we break? exclamation test! period test."
    # irb(main):029:0> str.split(/[.!\?]/)
    # => ["oh okay", " let us see", " how do we break", " exclamation test", " period test"]
# use each method on the result array to split sentences into individual words and save to a hash with the key as the arr#count and the value the arr [[note that all duplicate length shorter sentences will be deleted, and if there are multiple longest sentences that only the first one will be returned, but am okay with this]]
# select the largest key then return that keys value and join the sentence

def longest_sentence(text)
  sentences = text.split(/[.!\?]/)
  sentence_lengths = {}
  sentences.each do |sentence|
    arr = sentence.split
    sentence_lengths[arr.count] = arr
  end
  longest = sentence_lengths.max
  "the longest sentence has #{longest[0]} words. the longest sentence in the given text is: #{longest[1].join(' ')}"
end


# test 1 
test = "oh okay. let us see. how do we break? exclamation test! period test."
p longest_sentence(test)

# test 2
test_2 = "Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.

Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this.

But, in a larger sense, we can not dedicate, we can not
consecrate, we can not hallow this ground. The brave
men, living and dead, who struggled here, have
consecrated it, far above our poor power to add or
detract. The world will little note, nor long remember
what we say here, but it can never forget what they
did here. It is for us the living, rather, to be dedicated
here to the unfinished work which they who fought
here have thus far so nobly advanced. It is rather for
us to be here dedicated to the great task remaining
before us -- that from these honored dead we take
increased devotion to that cause for which they gave
the last full measure of devotion -- that we here highly
resolve that these dead shall not have died in vain
-- that this nation, under God, shall have a new birth
of freedom -- and that government of the people, by
the people, for the people, shall not perish from the
earth."

p longest_sentence(test_2)

# TESTS WORKED!

# LS solution uses File.read to convert a text to a string, max_by method to find the longest_sentence and the strip method to remove whitespace. overall, solved in a simpler manner to me by skipping the add to hash step that I did

# text = File.read('sample_text.txt')
# sentences = text.split(/\.|\?|!/)
# largest_sentence = sentences.max_by { |sentence| sentence.split.size }
# largest_sentence = largest_sentence.strip
# number_of_words = largest_sentence.split.size

# puts "#{largest_sentence}"
# puts "Containing #{number_of_words} words"

# irb(main):049:0> str
# => "oh okay. let us see. how do we break? exclamation test! period test."
# irb(main):050:0> sentences = str.split(/\.|\?|!/)
# => ["oh okay", " let us see", " how do we break", " exclamation test", " period test"]
# irb(main):051:0> largest_sentence = sentences.max_by { |sentence| sentence.split.size }
# => " how do we break"
# irb(main):052:0> largest_sentence = largest_sentence.strip
# => "how do we break"
# irb(main):053:0> number_of_words = largest_sentence.split.size
# => 4
