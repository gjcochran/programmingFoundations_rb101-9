# A continuation of the previous exercise.

# The British Empire adopted the Gregorian Calendar in 1752, which was a leap year. Prior to 1752, the Julian Calendar was used. Under the Julian Calendar, leap years occur in any year that is evenly divisible by 4.

# Using this information, update the method from the previous exercise to determine leap years both before and after 1752.

def leap_year?(year)
  if year < 1752
    year % 4 == 0
  elsif year >= 1752
    if year % 400 == 0
      true
    elsif year % 100 == 0
      false
    else
      year % 4 == 0
    end
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240_000) == true
p leap_year?(240_001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true

# simpler option from LS
# def leap_year?(year)
#   if year < 1752 && year % 4 == 0
#     true
#   elsif year % 400 == 0
#     true
#   elsif year % 100 == 0
#     false
#   else
#     year % 4 == 0
#   end
# end

# ####
# "Between 1582 and 1752, not only were two calendars in use in Europe (and in European colonies), but two different starts of the year were in use in England.  Although the "Legal" year began on March 25, the use of the Gregorian calendar by other European countries led to January 1 becoming commonly celebrated as "New Year's Day" and given as the first day of the year in almanacs.

# To avoid misinterpretation, both the "Old Style" and "New Style" year was often used in English and colonial records for dates falling between the new New Year (January 1) and old New Year (March 25), a system known as "double dating." Such dates are usually identified by a slash mark [/] breaking the "Old Style" and "New Style" year, for example, March 19, 1631/2.  Occasionally, writers would express the double date with a hyphen, for example, March 19, 1631-32.  In general, double dating was more common in civil than church and ecclesiastical records.

# Changes of 1752
# In accordance with a 1750 act of Parliament, England and its colonies changed calendars in 1752. By that time, the discrepancy between a solar year and the Julian Calendar had grown by an additional day, so that the calendar used in England and its colonies was 11 days out-of-sync with the Gregorian Calendar in use in most other parts of Europe.

# England's calendar change included three major components. The Julian Calendar was replaced by the Gregorian Calendar, changing the formula for calculating leap years.  The beginning of the legal new year was moved from March 25 to January 1.  Finally, 11 days were dropped from the month of September 1752.

# The changeover involved a series of steps:

# December 31, 1750 was followed by January 1, 1750 (under the "Old Style" calendar, December was the 10th month and January the 11th)
# March 24, 1750 was followed by March 25, 1751 (March 25 was the first day of the "Old Style" year)
# December 31, 1751 was followed by January 1, 1752 (the switch from March 25 to January 1 as the first day of the year)
# September 2, 1752 was followed by September 14, 1752 (drop of 11 days to conform to the Gregorian calendar)"
