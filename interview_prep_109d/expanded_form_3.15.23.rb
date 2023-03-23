=begin
Write Number in Expanded Form

You will be given a number and you will need to return it as a string in Expanded Form. 

For example:
expanded_form(12); # Should return '10 + 2'
expanded_form(42); # Should return '40 + 2'
expanded_form(70304); # Should return '70000 + 300 + 4'
NOTE: All numbers will be whole numbers greater than 0.

-----
input - integer 
  wont be a float (ie will be a whole number)
  will be greater than 0
return - String
  represents every base10 of the number expanded and added together as a sentence

algorithm:
  - initialize storage array 
  - initialize variable to store remainder to 
  - initialize divided variable
  - iteration method size of digits in integer input - 1... size is times to iterate
    - divmod starting at 10 ** size of digits - 1 ... divided variable
    - store first element of divmod return array * current base10 (divided) in storage Array
    - reassign remainder variable to second element of divmod return array
    - reassign divided variable to value divided by 10
    - repeat these steps input size - 1 times
  - reject elements from storage array that are equal to 0
  - return join of array with ' + ' passed in as argument

=end

def expanded_form(integer)
  results = []
  remainder = integer
  size = integer.digits.size - 1
  divided_by = 10 ** size

  (size + 1).times do 
    arr = remainder.divmod(divided_by)
    results << (arr.first * divided_by)
    remainder = arr.last
    divided_by /= 10
  end

  results.select! { |n| n!= 0 }
  results.join(' + ')
end

# took me 26 mins

### Rich's answer for reference below:

def expanded_form(number)
  multiplier = 10 ** (number.to_s.size - 1)
  digits_arr = number.to_s.chars
  digits_arr.map! do |digit|
    digit = digit.to_i
    digit *= multiplier
    multiplier /= 10
    digit.to_s
  end

  digits_arr.select { |digit| digit.to_i > 0 }.join(" + ")
end


p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'
