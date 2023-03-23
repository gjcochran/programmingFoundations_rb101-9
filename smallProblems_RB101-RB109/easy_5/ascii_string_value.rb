# Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. The ASCII string value is the sum of the ASCII values of every character in the string. (You may use String#ord to determine the ASCII value of a character.)

# E
# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0

# https://www.asciitable.xyz/ruby-program-convert-string-character-to-ascii-code/
p "a".ord #==> 97
p "abc".bytes #==> [97, 98, 99]

# going to write one version with bytes and one version with ord
# p "Four score".bytes #=> [70, 111, 117, 114, 32, 115, 99, 111, 114, 101]

# def ascii_value(string)
#   string == "" ? 0 : string.bytes.inject(:+)
# end
# p ascii_value("Four score") == 984
# p ascii_value("Launch School") == 1251
# p ascii_value("a") == 97
# p ascii_value("") == 0

# ord version

# def ascii_value(string)
#   arr = []
#   string.chars.map { |el| arr << el.ord }
#   arr.inject(:+)
# end
# p ascii_value("Four score") == 984
# p ascii_value("Launch School") == 1251
# p ascii_value("a") == 97
# p ascii_value("") == 0 # doesn't solve for if a string is empty, which why would it...

# LS version
def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord }
  sum
end
p ascii_value("Four score") == 984
p ascii_value("Launch School") == 1251
p ascii_value("a") == 97
p ascii_value("") == 0
