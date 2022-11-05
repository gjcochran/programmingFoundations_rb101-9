num = 5

if (num < 10)
  puts "small number"
else
  puts "large number"
end
#==> small number

p num < 10
#==> true

#
p true && true #==> true
p true && false #==> false 
p num < 10 && num.even? #==> false

p true || false #==> true

#### Calculator

# my attempt

# loop do  
#   puts "Please provide a number"
# num1 = gets.chomp.to_i
# puts "Please provide a second number"
# num2 = gets.chomp.to_i
#   puts "Which math operation? (add, subtract, multiply, divide)"
#   operation = gets.chomp.downcase

#   if operation == 'add' 
#     return p num1 + num2
#   elsif operation == 'subtract'
#     return p num1 - num2
#   elsif operation == 'multiply' 
#     return p num1 * num2 
#   elsif operation == 'divide'
#     return p num1 / num2
#   else 
#     puts "start over, wrong input"
#   end
# end

# their answer in calculator.rb file

# ----------------

# PSEUDOCODE example

# START

# Given a collection of integers called "numbers"
array_ex = [1, 2, 3, 4, 5, 2]
def find_greatest(numbers)
# SET iterator = 1
# SET saved_number = value within numbers collection at space 1
saved_number = numbers[0]

numbers.each do |num|
# WHILE iterator <= length of numbers
#   SET current_number = value within numbers collection at space "iterator"
#   IF saved_number >= current_number 
  if saved_number >= num
#     go to the next iteration
    next
#   ELSE 
  else 
#     saved_number = current_number 
    saved_number = num 
  
#   iterator = iterator + 1 
  end 
end
# PRINT saved_number 
  saved_number
# END 
end 
p find_greatest(array_ex) #==> 5

# -------- pseudocode exercises ------------

# ... 1
# a method that returns the sum of two integers

# START 
# Given two integers as parameters
def sum_method(num1, num2)
# SET sum = addition of parameters
  sum = num1 + num2
# END 
end
 
p sum_method(4, 3)

# ... 2
# a method that takes an array of strings, and returns a string that is all those strings concatenated together

# START 

# Given an array of strings called "strings"
array_strings = ["this", 'is', 'array', 'of', 'words']
def strings_method(strings)
# SET concatenated_strings to the join method on the argument
  concatenated_strings = strings.join  
# PRINT new array
  print concatenated_strings
# END
end

strings_method(array_strings) #==> thisisarrayofwords

# ... 3
# a method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element.
puts "------------- 3 ------------"

# START
# given array of integers 
array_integers = [4, 6, 3, 9, 2, 5, 6, 34, 7, 2]
def integers_every_other(ints)
# SET new_array = empty array
  new_array = []
# SET pos = first index of argument
  pos = ints[0]
# WHILE looping through the array
  ints.each do |int|
    
# IF an integer is in an odd index
    if pos % 2 == 1
    # push that integer to new_array
      new_array.push(int)
    end
    # increment pos 
    pos += 1
  end

# PRINT new_array
  p new_array 
# END
end

integers_every_other(array_integers) #==> [6, 9, 5, 34, 2]

# ... 4
# a method that determines the index of the 3rd occurrence of a given character in a string. For instance, if the given character is 'x' and the string is 'axbxcdxex', the method should return 6 (the index of the 3rd 'x'). If the given character does not occur at least 3 times, return nil.
puts "----------- 4 ------------"

# START
# Given a string of characters and a character to test
def occurence_test(string, character)
# using count method
# IF there are more than 3 instances of given character
  if string.count(character) > 2
#   return the index of the last instance
    p string.rindex(character)
# else  
  else 
#   return nil
    p nil
  end
# END  
end  

occurence_test('afdslkjdsfannmewmndsfej','j') #==> nil
occurence_test('afdslkjdsfannmewmndsfej','n') #==> 17

# ... 5
# a method that takes two arrays of numbers and returns the result of merging the arrays. The elements of the first array should become the elements at the even indexes of the returned array, while the elements of the second array should become the elements at the odd indexes. 
puts "----------- 5 ------------"


# START 
# Given two arrays of numbers
def merge_odd(array1, array2)
  # SET index = the 2nd index of the array, 
  index = 1
  # Iterate over the second array
  array2.each do |num|
  # Merge the arrays by pushing the second array into the first array at odd indexes 
    array1.insert(index, num)
    # increase index value by 2 (ie every other)
    index += 2
  end
# PRINT array1 
  p array1 
# END
end

array1 = [1, 2, 3]
array2 = [4, 5, 6]

merge_odd(array1, array2) #==> [1, 4, 2, 5, 3, 6]



