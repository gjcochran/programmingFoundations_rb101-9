def meal
  return 'Breakfast'
end

puts meal # will print: Breakfast; will return: nil; note that the return value of meal is Breakfast
# every method returns the evaluated result, or return value, of the last line that is executed.

# The only way to ensure a specific return value, other than putting it as the last line, is to use return. When return is executed, it immediately exits the method, returning the provided value. The code in this particular exercise would return the string 'Breakfast' with or without the return on line 2 because line 2 is the last (and only) line executed in the meal method.

#-------------------------------------------

def meal
  'Evening'
end

puts meal # will print: Evening; will return: nil; note that the return value of meal is Evening

#-------------------------------------------

def meal
  return 'Breakfast'
  'Dinner'
end

puts meal # puts... will print: Breakfast; will return: nil; note that the return value of meal is Breakfast

#-------------------------------------------

def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal
# =>
# Dinner
# Breakfast
# return: nil
# When you use #puts it's important to know that the printed value and the return value are not the same. #puts outputs the value it's given and returns nil. Therefore, the return value of puts 'Dinner' is nil. However, that's not the return value of meal. The return value of meal is 'Breakfast' because of the explicit return.

# If the return value is 'Breakfast' then why are both "Dinner" and "Breakfast" printed? The answer is simple: there are two #puts which means there will be more than one value printed.

#-------------------------------------------

def meal
  'Dinner'
  puts 'Dinner'
end

p meal
# Dinner
# nil
# return: nil
# When looking at this method, we know that the last line is puts 'Dinner', therefore, the return value of meal is the evaluated result of that line. Based on the previous exercise, we know that the return value of #puts is always nil. Putting both of those together results in the return value of meal being nil.

# However, two values are printed, not just nil. This is because there is a #puts and a #p (we use #p so that nil is visible in the output).

#-------------------------------------------

def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal # puts... will print: Breakfast; will return: nil; note that the return value of meal is Breakfast

#-------------------------------------------

def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep

# 1
# 2 
# 3
# 4
# 5
#=> nil

# almost exactly right, missed that it starts at 0, not 1

# We're using Integer#times within the count_sheep method to count from 0 to 4 (#times starts at 0). Therefore, it's no surprise that the output includes 0 through 4. What may be surprising, however, is the fact that the output includes 5. Where did that 5 come from? If you study #times in the Ruby docs, you'll know that after iterating 5 times, the block returns the initial integer. Which, in this case, is 5.

# We can use this knowledge combined with what we learned from the previous exercises to determine why 5 was printed. When looking at count_sheep we can see that the #times block is the only code in the method. This means it's also the last line in the method. Since #times returns the initial integer, we now know that the return value of count_sheep is 5.

#-------------------------------------------

def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep

# 0
# 1
# 2
# 3
# 4
# 10
#=> nil
# correct

#-------------------------------------------

def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep

# 0
# 1
# 2
# nil
#=> nil

# didnt get this right on first try, REVIEW

# This exercise is a little different compared to the last two. We've made Integer#times the last line in count_sheep again, but this time there's a return inside the block. Based on what we know with return, we should be able to determine the return value of count_sheep. Looking at the if condition, we can see that return will be processed once sheep equals 2. This lets us know the method will end there and return the value provided by return.

# In this case, return didn't provide a value. That's why the last output is nil (we used #p when invoking count_sheep so that nil is visible in the output).

#-------------------------------------------

def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number

# 1
#=> nil
