# input: integer (year)
# output: integer (# of Friday the 13th in given input year)
# assume: year > 1752 and is on modern calendar

# Date class
# Date.new(input_year, month, 13).friday?
# increment 12 times

require 'date'

def friday_13th(year)
  total = 0
  1.upto(12) do |i|
    total += 1 if Date.new(year, i, 13).friday?
  end
  total
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

# good. works well.
# LS answer below. they incremented the month using Date.civil within the times method

def friday_13th_LS(year)
  unlucky_count = 0
  thirteenth = Date.civil(year, 1, 13)
  12.times do
    unlucky_count += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  unlucky_count
end
