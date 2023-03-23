require 'date'

# Write a method that returns the number of Friday the 13ths in the year given by an argument. You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future.

# E
# friday_13th(2015) == 3
# friday_13th(1986) == 1
# friday_13th(2019) == 2

# irb(main):004:0> Date.today
# => #<Date: 2022-12-01 ((2459915j,0s,0n),+0s,2299161j)>
# ie December 1st, 2022

# D/A
# there was a friday the 13th this year in may, but not in january
  # irb(main):006:0> Date.new(2022,1,13).friday?
  # => false
  # irb(main):007:0> Date.new(2022,5,13).friday?
  # => true
# based on this, I can use the select method iterating over an array of each month and subbing the month integer for the second parameter in Date.new

def friday_13th(year)
  months = (1..12).to_a
  result = 0
  months.select { |month| result += 1 if Date.new(year, month, 13).friday? }
  result
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

# my solution worked great. LS solution was slightly different, pasted below

# require 'date'

# def friday_13th(year)
#   unlucky_count = 0
#   thirteenth = Date.civil(year, 1, 13)
#   12.times do
#     unlucky_count += 1 if thirteenth.friday?
#     thirteenth = thirteenth.next_month
#   end
#   unlucky_count
# end