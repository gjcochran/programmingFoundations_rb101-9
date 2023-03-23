# PROMPT

# Build a command line calculator program that does the following:

# asks for two numbers
# asks for the type of operation to perform: add, subtract, multiply or divide
# displays the result

# P - Understand the Problem
# input: (request)
#   - one number
#   - second number
#   - math operation
#     - +, -, *, /
# output:
#   - integer
#   - result of one number (math operation) second number
# framework: using puts and gets.chomp to gather user input

# D 
# will need to convert number ie string user inputs into integers using .to_i
# will need to convert math operation ie string user inputs into operators 
  # can use case statment or if statement
# nested loops so that can allow user to run this problem multiple times within same program instance


# A
# within loop 
# puts a request for a number
# gets.chomp the number and converts string to integer
# puts a request for a second number
# gets.chomp the number and converts string to integer
# puts a request for a math operation (noting options)
# gets.chomp the operation and converts string to operand using case statement
#   - when answer.downcase == divide then / 
#   etc 
# puts return value and ask if they want to go again  

# C

# version 1
# loop do
#   puts "Please provide an integer"
#   num1 = gets.chomp.to_i
#   puts "Please provide a second integer"
#   num2 = gets.chomp.to_i
#   puts "Please specify a math operation to be performed (addition, subtraction, multiplication, division"
#   operation = gets.chomp.downcase
#   result = 0
#   case operation
#   when "addition" then result += (num1 + num2)
#   when "subtraction" then result += (num1 - num2)
#   when "multiplication" then result += (num1 * num2)
#   when "division" then result += (num1 / num2.to_f).round(2)
#   end
#   puts "#{result}"
#   puts "would you like to do another computation? (y/n)"
#   answer = gets.chomp.downcase[0]
#   break if answer == 'n'
# end
# puts "enjoy your day"

# this version works well enough but does not account for edge cases ...
  # - what is the second number is 0 and they want division
  # - what if they dont put in a number for first 2 inputs
  # - what if they misspell or type in a different than the 4 given available math operations
  # - what if they want to work with floats

  # version 2 refactored with edge cases

# brcon = []
# loop do
#   brcon.empty? ? (puts "Welcome to basic math calculator. Would you like to play? (y/n)") : break
#   play = gets.chomp.downcase[0]
#   break if play == 'n'
#   loop do
#     puts "Please provide an integer that is not 0 (floats work)"
#     num1 = gets.chomp.to_f
#     unless num1.is_a?(Float) && num1 != 0
#       puts "restart... please provide a valid number"
#       break
#     end

#     puts "Please provide another integer that is not 0 (floats work)"
#     num2 = gets.chomp.to_f
#     unless num2.is_a?(Float) && num2 != 0
#       puts "restart... please provide a valid number"
#       break
#     end

#     puts "Please specify a math operation to be performed ((a)ddition, (s)traction, (m)ultiplication, (d)ivision"
#     operation = gets.chomp.downcase[0]
#     result = 0
#     case operation
#     when "a" 
#       result += (num1 + num2).round(2)
#       puts "The result of adding #{num1} and #{num2} is #{result}"
#     when "s"
#       result += (num1 - num2).round(2)
#       puts "The result of subtracting #{num2} from #{num1} is #{result}"
#     when "m"
#       result += (num1 * num2).round(2)
#       puts "The result of multiplying #{num1} and #{num2} is #{result}"
#     when "d"
#       result += (num1 / num2).round(2)
#       puts "The result of dividing #{num2} from #{num1} is #{result}"
#     else
#       puts "restart... invalid operation seleciton"
#       break
#     end

#     puts "would you like to do another computation? (y/n)"
#     answer = gets.chomp.downcase[0]
#     if answer == 'n'
#       brcon << answer
#       break
#     end
#   end
# end
# puts "enjoy your day"

# LS version below to compare to

# A - ALGORITHM (PSEUDOCODE)

# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("Welcome to Calculator! Enter your name:")

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt("Make sure to use a valid name.")
  else 
    break
  end
end

prompt("Hi #{name}!")

loop do
  num1 = ''
  loop do
    prompt("What's the first number?")
    num1 = gets.chomp

    if valid_number?(num1)
      break
    else
      prompt("not a valid number")
    end
  end

  num2 = ''
  loop do
    prompt("Whats the second number?")
    num2 = gets.chomp

    if valid_number?(num2)
      break
    else
      prompt("not a valid number")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG
  
  prompt(operator_prompt)

  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3, or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
  when '1'
    num1.to_i + num2.to_i
  when '2'
    num1.to_i - num2.to_i
  when '3'
    num1.to_i * num2.to_i
  when '4'
    num1.to_f / num2.to_f
  end

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again")
  answer = gets.chomp 
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you, good bye")
