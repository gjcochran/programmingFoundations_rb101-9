# Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

# note
# [1] pry(main)> 'ddaaiillyy ddoouubbllee'.squeeze
# => "daily double"

# E
# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''

def crunch(str)
  arr = str.chars 
  arr2 = []
  arr2 << arr[0]
  counter = 1
  loop do
    arr2 << arr[counter] if arr[counter] != arr[counter - 1]
    counter += 1
    break if counter == arr.size
  end
  arr2.join
end

p crunch('ddaaiillyy ddoouubbllee')
p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
# p crunch('') == ''

# this worked on all but the last test.
# after reviewing LS answer, did not even need to convert to an array! 
# b/c can call the index of a string
# irb(main):034:0> "daily double"[0]
# => "d"

# def crunch(text)
#   index = 0
#   crunch_text = ''
#   while index <= text.length - 1
#     crunch_text << text[index] unless text[index] == text[index + 1]
#     index += 1
#   end
#   crunch_text
# end