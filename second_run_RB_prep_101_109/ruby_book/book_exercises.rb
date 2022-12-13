# 1. Add two strings together that, when concatenated, return your first and last name as your full name in one string.

first = 'Garrett'
last = 'Cochran'

p first + ' ' + last
p "#{first} #{last}"

# review: couldve also done "garrett " + "cochran"

# 2. Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the: 1) thousands place 2) hundreds place 3) tens place 4) ones place

# num = 1234
# ones = 1234 % 10
# p ones
# tens = num.to_s[0..2].to_i % 10
# p tens
# hundreds = num.to_s[0..1].to_i % 10
# p hundreds
# thousands = num.to_s[0].to_i % 10
# p thousands

# OR
num = 1234
o = num % 10
ones = o / 1
num -= o
t = num % 100
tens = t / 10
num -= t
h = num % 1000
hundreds = h / 100
num -= h
th = num % 10000
thousands = th / 1000
p ones
p tens
p hundreds
p thousands

# 3. Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command to make your program print out the year of each movie to the screen.

movies = { a: 1975, b: 2004, c: 2013 }
puts movies.values

# review: could have also written them one by one
# puts movies[:a]
# puts movies[:b]
# puts movies[:c]

# 4. Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.

arr = movies.values
p arr
puts arr[0]
puts arr[1]
puts arr[2]
arr.each { |el| puts el }

# 5. Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.

def factorial(num)
  sum = 1
  (1..num).each do |i|
    sum *= i
  end
  sum
end

p factorial(5)
p factorial(6)
p factorial(7)
p factorial(8)

# 6. Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen.

def sq_fl(fl)
  fl ** 2
end


