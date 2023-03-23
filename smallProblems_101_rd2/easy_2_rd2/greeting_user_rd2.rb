# PROMPT:
# request: users name
# if ! then yell, otherwise normal greeting

def prompt(str)
  puts "=> #{str}"
end

prompt "What is your name?"
name = gets.chomp

name.include?("!") ? (puts "STOP SCREAMING #{name.upcase}!") : (puts "Hello #{name.capitalize}.")

# REVIEW:
# good. they used name[-1] == '!' and name.chop to remove the `!`
