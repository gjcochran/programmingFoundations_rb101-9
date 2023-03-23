require "date"

# Build a program that displays when the user will retire and how many years she has to work till retirement.

# age (gets)
# retirement age (gets)

# from ruby
# current year
# need to put requre 'date' at top of doc
# Date.today.year

# compute
# current year + retirement age
# retirement year - current year

puts "What is your age?"
age = gets.chomp.to_ic
puts "Ideal retirement age?"
retirement_age = gets.chomp.to_i

current_year = Date.today.year
years_until_retire = retirement_age - age
retire_year = current_year + years_until_retire

puts "It's #{current_year}. You will retire in #{retire_year}"
puts "you only have #{years_until_retire} years of work to go"

# note that if used Time.now.year rather than Date.today.year then don't need the require 'date' in line 1 ...
