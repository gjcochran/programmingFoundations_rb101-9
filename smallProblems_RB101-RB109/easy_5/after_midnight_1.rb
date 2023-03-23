# The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

# P
# input: minutes before or after midight (integer)
# output: time (string)
# ex. input: 90 ... output: "01:30"
# 24 * 60 = 1440 (minutes in each day)

# E
# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"

# D/A
# need to convert minutes to hours by dividing by 60
# as is integer division, wont calculate remainder, can determine this by modulo 60
# add or subract the division number from first 00 and the modulo number from second 00
# ex.
# input: 800
# 800 / 60 = 13
# 800 % 60 = 20
# to_s both
# '13' + ':' + '20'
# therefore output: '13:20'
# need to accomodate numbers greater than 1440 ...
# if output > 1440 ...
# output % 1440 then divide and modulo by 60 this number

# last thing to sort out is how to make 00 rather than 0 or 01 rather than 1

DIGITS = {
  "0" => "00",
  "1" => "01",
  "2" => "02",
  "3" => "03",
  "4" => "04",
  "5" => "05",
  "6" => "06",
  "7" => "07",
  "8" => "08",
  "9" => "09",
}

def time_of_day(int)
  if int >= 0 || int < -1440
    num = int % 1440
    h = num / 60
    m = num % 60
    hour = h.to_s
    min = m.to_s
    hour = DIGITS[hour] if DIGITS.keys.include?(hour)
    min = DIGITS[min] if DIGITS.keys.include?(min)
    "#{hour}" + ":" + "#{min}"
  elsif int < 0 && int >= -1440
    h = 24 + int / 60
    m = int % 60
    hour = h.to_s
    min = m.to_s
    hour = DIGITS[hour] if DIGITS.keys.include?(hour)
    min = DIGITS[min] if DIGITS.keys.include?(min)
    "#{hour}" + ":" + "#{min}"
  end
end

p time_of_day(0)
p time_of_day(-3)
p time_of_day(35)
p time_of_day(-1437)
p time_of_day(3000)
p time_of_day(800)
p time_of_day(-4231)

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

# mine worked, but was quite complex. LS solution simpler ... 1. by using divmod 2. by using format
# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def normalize_minutes_to_0_through_1439(minutes)
#   while minutes < 0
#     minutes += MINUTES_PER_DAY
#   end

#   minutes % MINUTES_PER_DAY
# end

# def time_of_day(delta_minutes)
#   delta_minutes = normalize_minutes_to_0_through_1439(delta_minutes)
#   hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
#   format('%02d:%02d', hours, minutes)
# end

# irb(main):001:0> hours = 12
# => 12
# irb(main):002:0> minutes = 45
# => 45
# irb(main):003:0> format('%02d:%02d', hours, minutes)
# => "12:45"
# https://ruby-doc.org/core-3.1.2/Kernel.html#method-i-format
