# Prompt: write a method that will take a short line of text, and print it within a box

# There are str.size + 2 dashes above and below the string


def print_in_box(str)
  puts "+-" + ("-" * str.size) + "-+"
  puts "| " + (" " * str.size) + " |"
  puts "| " + str + " |"
  puts "| " + (" " * str.size) + " |"
  puts "+-" + ("-" * str.size) + "-+"
end

print_in_box('To go boldly where no one has gone before.')
print_in_box('')

# REVIEW:
# my solution works well, although is not exactly the same as LS as they used local variables with string interpolation

def print_box_LS(str)
  horiz = "+#{'-' * (str.size + 2)}+"
  empty = "|#{' ' * (str.size + 2)}|"

  puts horiz
  puts empty
  puts "| #{str} |"
  puts empty
  puts horiz  
end
