# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.

# E
# letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# tests
# irb(main):018:0> str = 'abCdef 123'
# => "abCdef 123"
# irb(main):019:0> arr = str.split(//)
# => ["a", "b", "C", "d", "e", "f", " ", "1", "2", "3"]
# irb(main):020:0> result = arr.select { |el| el.match(/[a-z]/) }
# => ["a", "b", "d", "e", "f"]
# irb(main):021:0> result2 = arr.select { |el| el.match(/[A-Z]/) }
# => ["C"]
# irb(main):022:0> result3 = arr.select { |el| el.match(/[^a-zA-Z]/) }
# => [" ", "1", "2", "3"]

def letter_case_count(str)
  result = Hash.new 
  arr = str.split(//)
  lower = arr.select { |el| el.match(/[a-z]/) }
  upper = arr.select { |el| el.match(/[A-Z]/) }
  neither = arr.select { |el| el.match(/[^a-zA-Z]/) }

  result = {
    'lowercase': lower.size,
    'uppercase': upper.size,
    'neither': neither.size,
  }
end

p letter_case_count('abCdef 123')

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# LS had two solutions, both of which were different than my own

#  LS solution1 

UPPERCASE_CHARS = ('A'..'Z').to_a
LOWERCASE_CHARS = ('a'..'z').to_a

def letter_case_count_v2(string)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }

  string.chars.each do |char|
    if UPPERCASE_CHARS.include?(char)
      counts[:uppercase] += 1
    elsif LOWERCASE_CHARS.include?(char)
      counts[:lowercase] += 1
    else
      counts[:neither] += 1
    end
  end

  counts
end

# LS solution 2

def letter_case_count_v3(string)
  counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  counts
end

char =~ /[a-z]/ : This checks if the character is a lowercase letter between a and z. char =~ /[A-Z]/ : This checks if the character is an uppercase letter between A and Z. char =~ /[^A-Za-z]/ : This checks if the character is neither an uppercase letter nor a lowercase letter.