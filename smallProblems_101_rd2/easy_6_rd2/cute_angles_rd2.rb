# input: integer (represents angle between 0 and 360 degrees)
# output: string (degree representation of that integer)
# degree has 60 minutes, minute has 60 seconds
# deg, min, sec
# ° , ' , "

# A 
# deg = num.to_i
# min 
#   num - deg 
#   * 60
#   .to_i
# sec
#   repeat min process
# FORMAT
#
DEGREE = "\xC2\xB0"

def dms(num)
  deg = num.to_i
  mins = (num - deg) * 60
  min = mins.round(4).to_i
  sec = ((mins - min) * 60)
  
  result = "#{deg}#{DEGREE}%02d'%02d\"" % [min, sec]
end

p dms(30)
p dms(76.73)
p dms(254.6)
p dms(93.034773)
p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00")

# good. LS answer below
# DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end
