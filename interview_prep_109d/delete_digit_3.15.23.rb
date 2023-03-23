=begin
Given an integer n, find the maximal number you can obtain by deleting exactly one digit of the given number.

For n = 152, the output should be 52;

For n = 1001, the output should be 101.

input - Integer
return - Integer
  - 1 less in digits.size than input
rules:
  - find maximum number of...
    - all options deleting only one digit from the input integer 
  - question -- what if integer input is less than 10?

algorithm:
  - convert to array of digits and store in a variable
  - initialize storage array and assign to variable
  - iterate over digits array at each index 
  - select all elements not at current index and 
    push an array of these elements to storage/results array 
      - convert to integer by joining and type converting to integer before i push each selection
  - return max of results array
=end

def delete_digit(integer)
  digits = integer.digits.reverse
  results = []
  0.upto(digits.size - 1) do |idx|
    selected = digits.reject.with_index { |_, i| i == idx }
    results << selected.join.to_i
  end
  results.max
end

# solved in 16 mins
### Rich's answer for reference:

def delete_digit(n)
  potential_numbers = []
  digits = n.to_s.chars
  
  digits.each_with_index do |digit, index|
    subdigits = digits.dup
    subdigits.delete_at(index)
    potential_numbers << subdigits.join("").to_i
  end

  potential_numbers.sort[-1]
end

p delete_digit(791983) == 91983
p delete_digit(152) == 52
p delete_digit(1001) == 101
p delete_digit(10) == 1

### !! could have used combination method
