# input: string
# output: array of strings -> substrings of input which are palindromes

# rules:
# same sequence as appear in input
# include duplicates in return array
# advised to use substrings method that wrote in previous exercise
# ^ will try to write from memory...
# case-sensitivity
# single chars are not palindromes, >= 2

def leading_subs(str)
  result = []
  arr = str.chars
  arr.each_index do |i|
    result << arr[0..i].join 
  end
  result
end

def subs(str)
  arr = []
  (0..str.size).each do |i|
    arr << leading_subs(str[i..-1]) 
  end
arr.flatten
end

def palindromes(str)
  arr = subs(str)
  arr.select { |el| el == el.reverse && el.size > 1 }
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

p palindromes('abcd')
p palindromes('madam')
p palindromes('hello-madam-did-madam-goodbye')
p palindromes('knitting cassettes')

# review: great, works well. LS is in essence similar, although they added a few steps rather than use select
#
# FURTHER EXPLORATION:
# modify the methods to ignore non-alphanum chars and ignore case

# both feeder methods can stay the same

def palis_v2(str)
  arr = subs(str)
  result = []
  arr.each do |el|
    unless el.scan(/\w/).join.size < 2
      check = el.downcase.scan(/\w/)
      result << el if check == check.reverse
    end
  end
  result
end

p palis_v2('maDda?m')


