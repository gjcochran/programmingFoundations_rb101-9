# input: string
# output: hash
#   { lowercase, uppercase, neither }
#   values are floats representing % of total

def letter_percentages(str)
  total = str.size
  arr = str.chars
  hsh = arr.each_with_object ({}) do |el, h|
    h[:lowercase] = arr.count { |c| c =~ /[a-z]/ }
    h[:uppercase] = arr.count { |c| c =~ /[A-Z]/ }
    h[:neither] = arr.count { |c| c =~ /[^a-zA-Z]/ }
  end
  hsh.map { |k, v| [k, v = (v.to_f / total) * 100] }.to_h
end

p letter_percentages('abCdef 123')
p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

# good, all tests passed.
# LS answer below, some small differences:

def letter_percentages_LS(string)
  counts = {}
  percentages = {}
  characters = string.chars
  length = string.length

  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }

  calculate(percentages, counts, length)

  percentages
end

def calculate(percentages, counts, length)
  percentages[:lowercase] = (counts[:lowercase] / length.to_f) * 100
  percentages[:uppercase] = (counts[:uppercase] / length.to_f) * 100
  percentages[:neither] = (counts[:neither] / length.to_f) * 100
end
