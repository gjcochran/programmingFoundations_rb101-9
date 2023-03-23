# As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

# # MINUTES_PER_HOUR = 60
# # HOURS_PER_DAY = 24
# # MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# # def normalize_minutes_to_0_through_1439(minutes)
# #   while minutes < 0
# #     minutes += MINUTES_PER_DAY
# #   end

# #   minutes % MINUTES_PER_DAY
# # end

# # def time_of_day(delta_minutes)
# #   delta_minutes = normalize_minutes_to_0_through_1439(delta_minutes)
# #   hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
# #   format('%02d:%02d', hours, minutes)
# # end

# # E
# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0

# "12:34".split(/:/)
# => ["12", "34"]
# irb(main):013:0> arr
# => ["12", "34"]
# irb(main):014:0> (arr[0].to_i * 60) + arr[1].to_i
# => 754

def after_midnight(time)
  arr = time.split(/:/)
  arr[0] == "24" ? 0 : (arr[0].to_i * 60) + arr[1].to_i
end

def before_midnight(time)
  arr = time.split(/:/)
  arr[0] == "00" ? 0 : 1440 - ((arr[0].to_i * 60) + arr[1].to_i)
end

p after_midnight("00:00") == 0
p before_midnight("00:00") == 0
p after_midnight("12:34") == 754
p before_midnight("12:34") == 686
p after_midnight("24:00") == 0
p before_midnight("24:00") == 0

# again, my answer works but is not quite as clean as LS, pasted below
# HOURS_PER_DAY = 24
# MINUTES_PER_HOUR = 60
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def after_midnight(time_str)
#   hours, minutes = time_str.split(':').map(&:to_i)
#   (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
# end

# def before_midnight(time_str)
#   delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
#   delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
#   delta_minutes
# end
