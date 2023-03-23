# if portion of str1 can be rearranged to match str2, return true
# only lowercase letters

# input: 2 strings
# output: boolean

# algo
#   determine size of str2
#   push to array every permutation of str1 of that size
#   if str2 is included in the array, return true

def scramble(str1, str2)
  size = str2.size
  array = []
  str1.chars.permutation(size) { |c| array << c.join }
  array.include?(str2)
end

p scramble('javaass', 'jjss')
p scramble('rkqodlw', 'world')

# easy, not that efficient but solved in less than 5 minutes

###
# video answer

def scramble_example(str1, str2)
  arr1, arr2 = str1.chars, str2.chars
  arr2.each { |c2| return false if str2.count(c2) > str1.count(c2) }
  true
end
