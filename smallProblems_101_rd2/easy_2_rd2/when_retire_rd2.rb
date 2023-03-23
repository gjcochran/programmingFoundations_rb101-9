# PROMPT: build a program that displays when the user will retire and how many years she has to work til retirement
require 'date'

def prompt(str)
  puts "=> #{str}"
end

prompt "What is your age?"
age = gets.chomp.to_i
prompt "Ideal retirement age?"
retire_age = gets.chomp.to_i

current_year = Date.today.year
working_years = retire_age - age
retire_year = current_year + working_years

puts "It is #{current_year}. You will retire in #{retire_year} in #{working_years} years."

# REVIEW: good. they used Time.now.year rather than Date.today.year to find the current year, but both work well.
