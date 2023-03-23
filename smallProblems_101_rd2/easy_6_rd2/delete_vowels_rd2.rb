# input: array of strings
# output: remove all vowels

def remove_vowels(arr)
  arr.map { |s| s.scan(/[^aeiou]/i).join }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
p remove_vowels(%w(green YELLOW black white))
p remove_vowels(%w(ABC AEIOU XYZ)) 
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# works well. LS solution below to see another option
def remove_vowels_LS(strings)
  strings.map { |string| string.delete('aeiouAEIOU') }
end

