# inputs: 2 integers (starting & ending nums)
# output: print statement with integers and strings from starting..ending 
# rules:
#   "Fizz" if num % 3 == 0
#   "Buzz" if num % 5 == 0
#   "FizzBuzz" if both %3 && % 5 == 0
#   else num

# A
# iterate through range
# if/else statement
# first if is fizzbuzz then order doesnt matter

def fizzbuzz(first, last)
  (first..last).each do |i|
    if i % 3 == 0 && i % 5 == 0
      puts 'FizzBuzz'
    elsif i % 3 == 0
      puts 'Fizz'
    elsif i % 5 == 0
      puts 'Buzz'
    else
      puts i
    end
  end
end

fizzbuzz(1, 15)

# decent. the only thing i missed was how to print the solution
# what they were looking for was for me to add each option to an array
# and then return that array joined as a string with a comma b/t each element
# ex. `array.join(', ')`
# therefore would be a return value rather than just outputs!
# rereading the solution, the objective was to print rather than return... so not too chuffed
# they used a case rather than if/else but same principles..
# they used `first.upto(last)` rather than `(first..last).each`, but same principle

