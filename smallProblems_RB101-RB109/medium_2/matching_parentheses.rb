# Write a method that takes a string as an argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

# E
# balanced?('What (is) this?') == true
# balanced?('What is) this?') == false
# balanced?('What (is this?') == false
# balanced?('((What) (is this))?') == true
# balanced?('((What)) (is this))?') == false
# balanced?('Hey!') == true
# balanced?(')Hey!(') == false
# balanced?('What ((is))) up(') == false

# P
# irb(main):017:0> str = '((What) (is this))?'
# => "((What) (is this))?"
# irb(main):018:0> arr = str.chars
# => ["(", "(", "W", "h", "a", "t", ")", " ", "(", "i", "s", " ", "t", "h", "i", "s", ")", ")", "?"]
# irb(main):019:0> b = arr.select { |el| el =~ /[()]/ }
# => ["(", "(", ")", "(", ")", ")"]

# D/A
# i am thinking that can loop through the array of parantheses, and add each ( or ) to counters, if at any point the ) counter is larger than the ( counter, then return false. once everything is counted, if the counters are equal then is true. 

def balanced?(string)
  arr_to_condense = string.chars
  arr_to_loop = arr_to_condense.select { |char| char =~ /[()]/ }
  open_counter = 0
  close_counter = 0
  arr_to_loop.each do |el|
    break if close_counter > open_counter
    el == '(' ? open_counter += 1 : close_counter += 1
  end
  open_counter == close_counter
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false

# WORKED!
# once again, i solved the problem but much prefer LS's given answer as is simpler...

# def balanced?(string)
#   parens = 0
#   string.each_char do |char|
#     parens += 1 if char == '('
#     parens -= 1 if char == ')'
#     break if parens < 0
#   end

#   parens.zero?
# end
