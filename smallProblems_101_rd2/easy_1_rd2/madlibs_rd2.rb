# PROMPT:
# create a simple mad lib program that prompts for a noun, a verb, an adverb, and an adjective 
# and injects those into a story that you create


def prompt(str)
  puts "=> #{str}"
end

prompt "Enter a noun:"
noun = gets.chomp
prompt "Enter a verb:"
verb = gets.chomp
prompt "Enter an adjective:"
adj = gets.chomp
prompt "Enter an adverb:"
adv = gets.chomp

puts "Tell me more about how you like to #{adv} #{verb} your #{adj} #{noun}"

# REVIEW: good.
