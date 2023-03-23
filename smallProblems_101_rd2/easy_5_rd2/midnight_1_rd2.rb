# can't use `Date` or `Time` classes...
# input: integer (num mins b/f || after midnight)
# output: "hh:mm"

# D/A 
# divmod(60) followed by divmod(24)
# add to if pos, subtract from if neg


def time_of_day(int)
  num = int.abs
  first = num.divmod(60)
  mins = first[1]
  second = first[0].divmod(24)
  hours = second[1]

  if int.positive? || int.zero?
    hh = (0 + hours).to_s
    mm = (0 + mins).to_s
  else
    hh = (23 - hours).to_s
    mm = (60 - mins).to_s
  end
  
  hh.size == 2 ? hh : hh = "0#{hh}"
  mm.size == 2 ? mm : mm = "0#{mm}"

  "#{hh}:#{mm}"
  
end

p time_of_day(0) 
p time_of_day(-3) 
p time_of_day(35) 
p time_of_day(-1437) 
p time_of_day(3000) 
p time_of_day(800) 
p time_of_day(-4231)


# mine works, LS below

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def normalize_minutes_to_0_through_1439(minutes)
  while minutes < 0
    minutes += MINUTES_PER_DAY
  end

  minutes % MINUTES_PER_DAY
end

def time_of_day(delta_minutes)
  delta_minutes = normalize_minutes_to_0_through_1439(delta_minutes)
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end
