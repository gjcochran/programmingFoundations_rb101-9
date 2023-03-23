#input: time of day
# output: mins before or after midnight

def before_midnight(time)
  nums = time.split(/:/).map(&:to_i)
  nums[0] = 24 if nums[0] == 0
  ((24 - nums[0]) * 60) - nums[1]
end

def after_midnight(time)
  nums = time.split(/:/).map(&:to_i)
  nums[0] = 0 if nums[0] == 24
  (nums[0] * 60) + nums[1]
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

p before_midnight('23:15')
p after_midnight('01:30')


# mine works well, LS answer below

HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight_LS(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight_LS(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight_LS(time_str)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end
