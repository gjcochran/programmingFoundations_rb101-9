# Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

# E
# What is your name? Bob
# Hello Bob.

# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

# D/A

# if/else statement with .upcase

# puts "What is your name?"
# name = gets.chomp

# response = "hello #{name}"

# if name.include?("!")
#   puts response.upcase
# else
#   puts response
# end

# revisions

puts "What is your name?"
name = gets.chomp

response = "hello #{name}"

if name[-1] == "!"
  puts "#{response.upcase.chop}. WHY ARE YOU SCREAMING"
else
  puts response
end
