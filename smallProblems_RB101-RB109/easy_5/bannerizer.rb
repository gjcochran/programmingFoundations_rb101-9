# Write a method that will take a short line of text, and print it within a box.

# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

def display_box(bx, dsh, spa)
  puts "+-#{dsh}-+"
  puts "| #{spa} |"
  puts "| #{bx} |"
  puts "| #{spa} |"
  puts "+-#{dsh}-+"
end

def print_in_box(str='')
  dsh = "-" * str.size
  spa = " " * str.size
  display_box(str, dsh, spa)
end

print_in_box('okay let us see')
print_in_box('To boldly go where no one has gone before.')
print_in_box('')

# mine worked, LS answer is similar albeit simpler
# def print_in_box(message)
#   horizontal_rule = "+#{'-' * (message.size + 2)}+"
#   empty_line = "|#{' ' * (message.size + 2)}|"

#   puts horizontal_rule
#   puts empty_line
#   puts "| #{message} |"
#   puts empty_line
#   puts horizontal_rule
# end