# Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

# E

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'

#D/A
# how to do?
# assume that aren't accounting for BCE, although could just be negative ceturies..

# part 1
# plan: divide by 100
# ex. 2001 / 100 = 20.01 but integer division is just 20 which makes this easier
# ((int / 100) + 1) .to_s
# the hiccup is years 0 ex. 1900, 2000
# solution: if int.to_s.end_with?('00') then don't add 1
# set part 1 string result to a variable

# part 2
# how to define if will be st; nd; rd; th ...?
# i think the first 10 numbers follow same pattern once hit 20, but teens are different
# 1st 2nd 3rd 4th 5th 6th 7th 8th 9th 10th
# 11th 12th 13th 14th 15th 16th 17th 18th 19th 20th
# 21st 22nd 23rd 24th 25th 26th 27th 28th 29th 30th
# 100th 101st 102nd 103rd 104th ...
# 111th 112th 11th ...
# 121st 122nd 123rd 124th ...

# 0 4 5 6 7 8 9 + teens -- always end in th
# 1 -- st (except for 11s)
# 2 -- nd (except for 12s)
# 3 -- rd (except for 13s)

# can do a case statement with part1variable.end_with?
# only thing that im unclear on is how to handle 1 2 & 3 vs the teens
# does ruby have wildcards like bash?? .. answer: regex

def century(year)
  if year.to_s.end_with?("00")
    cent = (year / 100).to_s
  else
    cent = ((year / 100) + 1).to_s
  end

  case
  when cent.end_with?("0", "4", "5", "6", "7", "8", "9")
    cent + "th"
  when cent.end_with?("11", "12", "13")
    cent + "th"
  when cent.end_with?("1")
    cent + "st"
  when cent.end_with?("2")
    cent + "nd"
  when cent.end_with?("3")
    cent + "rd"
  end
end

p century(1914)
p century(5)
p century(1205)
p century(1005)
p century(1105)
p century(405)
p century(305)

p century(2001) == "21st"
p century(2000) == "20th"
p century(1965) == "20th"
p century(256) == "3rd"
p century(5) == "1st"
p century(10_103) == "102nd"
p century(1052) == "11th"
p century(1127) == "12th"
p century(11_201) == "113th"

# mine worked. LS answer pasted below (overall similar with several aspects simplified)
# def century(year)
#   century = year / 100 + 1
#   century -= 1 if year % 100 == 0
#   century.to_s + century_suffix(century)
# end

# def century_suffix(century)
#   return 'th' if [11, 12, 13].include?(century % 100)
#   last_digit = century % 10

#   case last_digit
#   when 1 then 'st'
#   when 2 then 'nd'
#   when 3 then 'rd'
#   else 'th'
#   end
# end
