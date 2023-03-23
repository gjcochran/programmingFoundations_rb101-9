# PROMPT
# input: a year
# output: that years century
#   ending... st, nd, rd, th

# D/A
# year.divmod(100)
# => [q, r]
# if r > 0
# century = q + 1

# 1st, 2nd, 3rd .. 21st, 22nd, 23rd, 31st, 32nd, 33rd 
# 4th, 5th, 6th ... 14th, 15th, 16th, 24th,
# 10th .. 20th, 30th, 100th
# 11th, 12th, 13th 

# regex ?? if century.end_with?(/1(1|2|3)/) then th
# if century.end_with? 1 
# .. 2 
# .. 3
# .. (4|5|6|7|8|9|0)
# NOTE THAT cant use end_with? method with regex
# instead use match? with end of string anchor

def century(year)
  arr = year.divmod(100)
  arr[1] > 0 ? (cent = arr[0] + 1) : (cent = arr[0])

  if cent.to_s.match?(/1(1|2|3)\Z/)
    "#{cent}th"
  elsif cent.to_s.match?(/1\Z/)
    "#{cent}st"
  elsif cent.to_s.match?(/2\Z/)
    "#{cent}nd"
  elsif cent.to_s.match?(/3\Z/)
    "#{cent}rd"
  else
    "#{cent}th"
  end

end

p century(2000)
p century(2001)
p century(1965)
p century(256)
p century(5)
p century(10103)
p century(1052)
p century(1127)
p century(11201)

# REVIEW: my solution works well. LS solution a bit different, written out below for reference

def century_LS(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

end
