# input: String (ie a large amount of text)
# output: string (sentence) -> longest sentence in input text and how many words it is
# rules: sentences may end with `.` `!` `?`

# A
# to_a using scan with regex
# sort_by size
# arr.first

text = 'Four score and seven years ago our fathers brought forth
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
earth.'

def longest(str)
  longest = str.split(/[\.\?\!]/).sort_by(&:size).last
  "the longest sentence is #{longest.split.size} words long and is: #{longest}"
end

p longest(text)

# good. 
# like LS use of max_by method and noting that i sorted by total amount of chars rather than words
# which still worked but isnt as precise...
# strip method that they used got rid of the new lines that were in my text..
# LS stored texts as separate files.
# ie.

# text = File.read('ex_text.txt')

sentences = text.split(/\.|\?|!/)
largest_sentence = sentences.max_by { |sentence| sentence.split.size }
largest_sentence = largest_sentence.strip
number_of_words = largest_sentence.split.size

puts "#{largest_sentence}"
puts "Containing #{number_of_words} words"
