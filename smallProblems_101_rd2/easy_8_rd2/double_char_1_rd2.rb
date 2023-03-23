# input: string
# output: string -> double all chars in input

# A 
# map 'el' * 2

def repeater(str)
  str.chars.map { |el| el * 2 }.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

# review: great.
# LS below for reference. double shovel to local string variable

def repeater_LS(string)
  result = ''
  string.each_char do |char|
    result << char << char
  end
  result
end

