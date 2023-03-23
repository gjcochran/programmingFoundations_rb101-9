# Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# angle is parameter of method dms
# degree = angle.to_i 
# minute = (angle - angle.to_i) * 60 
# minutes = minute.to_i
# seconds = ((minute - minutes) * 60).to_i

# irb(main):005:0> DEGREE = "\xC2\xB0"
# => "°"
# irb(main):006:0> arr_samp = ["%", "(", 30.to_s, DEGREE, 00.to_s, "'", 00.to_s, "''"]
# => ["%", "(", "30", "°", "0", "'", "0", "''"]
# irb(main):007:0> arr_samp.join
# => "%(30°0'0''"
# irb(main):008:0> arr_samp.push(")")
# => ["%", "(", "30", "°", "0", "'", "0", "''", ")"]
# irb(main):009:0> arr_samp.join
# => "%(30°0'0'')"
# irb(main):012:0> puts arr_samp.join
# %(30°0'0'')
# need leading zero..
# irb(main):013:0> "%02d" % 0
# => "00"
# irb(main):014:0> "%02d" % 2
# => "02"
# irb(main):015:0> "%02d" % 5
# => "05"
# irb(main):016:0> "%02d" % 10
# => "10"

# CODE

DEGREE = "\xC2\xB0"

def dms(angle)
  degree = angle.to_i 
  minute = (angle - angle.to_i) * 60 
  minutes = minute.to_i
  seconds = ((minute - minutes) * 60).to_i
  min_val = "%02d" % minutes
  sec_val = "%02d" % seconds
  "#{degree.to_s}#{DEGREE}#{min_val.to_s}\'#{sec_val.to_s}\""
end

# irb(main):017:0> %(30°00'00")
# => "30°00'00\""

p dms(30)
p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# mine worked well, but NEED TO REMEMBER TO USE DIVMOD METHOD && FORMAT METHOD!
# https://ruby-doc.org/core-3.1.2/Integer.html#method-i-divmod
# https://ruby-doc.org/core-3.1.2/Kernel.html#method-i-format

# DEGREE = "\xC2\xB0"
# MINUTES_PER_DEGREE = 60
# SECONDS_PER_MINUTE = 60
# SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

# def dms(degrees_float)
#   total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
#   degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
#   minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
#   format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
# end