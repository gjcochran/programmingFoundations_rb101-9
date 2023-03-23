# given 2 strings, return true if there is a substring
# which appears in both strings, else false
# substrings must both be > 1 letter

# from examples, infer that case does not matter

# algo:
#   return false if both inputs are not of size greater than 1
#   downcase and chars to array first string input
#   key will be the include? method
#   nested iteration using upto
#   0...first_array.size
#     then current num...first_array.size
#   slice of num..last
#   test if second string includes

def substring_test(str1, str2)
  return false if [str1, str2].any? { |str| str.size < 2 }
  test_array = str1.downcase.chars
  test_string = str2.downcase

  (0...test_array.size).each do |lidx|
    (lidx...test_array.size).each do |ridx|
      temp_string = test_array[lidx..ridx].join
      return true if temp_string.size > 1 && test_string.include?(temp_string)
    end
  end
  false
end

p substring_test('Something', 'Fun')
p substring_test('Something', 'Home')
p substring_test('Something', 'Home')
p substring_test('Something', '')
p substring_test('', 'Something')
p substring_test('BANANA', 'banana')
p substring_test('test', 'lllt')
p substring_test('', '')
p substring_test('1234567', '541265')

# took ~15 mins
# not sure if is most efficient approach, but seems to work well and within time constraint

### 
# video answer 

# Rules
#   substring must be at least two characters long
#   in the same order
#   case doesn't matter

# note that ignoring her algo

def substring_test_example(str1, str2)
  arr1 = str1.downcase.chars
  arr2 = str2.downcase.chars
  arr1.each_with_index do |c1, i1|
    arr2.each_with_index do |c2, i2|
      return true if c1 == c2 && arr1[i1 + 1] == arr2[i2 + 1] && i1 != (arr1.size - 1)
    end
  end
  false
end
