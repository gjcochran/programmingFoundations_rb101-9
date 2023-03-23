# Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# seems like a clear use case for the delete method

# irb(main):027:0> ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u",
#   "v", "w", "x", "y", "z"].delete_if {|el| el == 'a' }
#   => ["b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

# how to iterate over other arrays?
# irb(main):049:0> arr = %w(green YELLOW black white)
# => ["green", "YELLOW", "black", "white"]
# irb(main):050:0> a = []
# => []
# irb(main):051:0> arr.each_slice(1) {|el| a << el }
# => nil
# irb(main):052:0> a
# => [["green"], ["YELLOW"], ["black"], ["white"]]


# /[^aeiou]/i ## will match any character but a, e, i, o, or u + the i in regex will apply this to both lower and uppercase vowels

# irb(main):031:0> str
# => "abcdefghijklmnopqrstuvwxyz"
# irb(main):032:0> arr = str.scan(/[^aeiou]/)
# => ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
# irb(main):033:0>

# took FOREVER but figured out a solution
# b = %w(green YELLOW black white)
# => ["green", "YELLOW", "black", "white"]
# irb(main):006:0> b.map { |el| el.split(/[aeiou]/).join }
# => ["grn", "YELLOW", "blck", "wht"] # just missing case sensitivity in regex
# irb(main):007:0>

def remove_vowels(arr)
  arr.map { |el| el.split(/[aeiou]/i).join }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) 
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(green YELLOW black white)) 
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
p remove_vowels(%w(ABC AEIOU XYZ))

# LS answer below. AH! my intuition about using delete method would have worked if i hadnt messed around with delete_if...
# def remove_vowels(strings)
#   strings.map { |string| string.delete('aeiouAEIOU') }
# end