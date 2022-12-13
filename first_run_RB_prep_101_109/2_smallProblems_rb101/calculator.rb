# note to self that i tested this in terminal by typing (in the directory where calculator.rb is stored) ruby calculator.rb 

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(input)
  input.to_i.to_s == input # the reason why this works... is because a non-number string that is converted .to_i will always convert to 0

  # num.to_i.is_a?(Fixnum) # is_a? does not work
  # num.to_i.is_a?(Integer) # i thought this may work, but does not because will turn all strings into integers, no matter what they type

  # num.to_i != 0 #note that if they input a string ... string.to_i will output 0 which is why this logic works, note that in current form just will return an error incorrectly if they type the number 0..
end

def sci_number?(input) 
  if input.to_i.to_s == input 
    true
  elsif input.to_f.to_s == input 
    true
  else
    false
  end
end

# note that they chose to find if sci number in a slightly different way... 
# def number?(input)
#   integer?(input) || float?(input)
# end

# def integer?(input)
#   input.to_i.to_s == input
# end

# def float?(input)
#   input.to_f.to_s == input
# end

def operation_to_message(op)
  safe = case op
          when '1'
            'Adding'
          when '2'
            'Subtracting'
          when '3'
            'Multiplying'
          when '4'
            'Dividing'
        end
  safe      
end

# answer = gets # || gets() # || Kernel.gets()
# puts answer # || Kernel.puts(answer)

# ask the user for two numbers
prompt(MESSAGES['welcome'])

name = ''
loop do 
  name = gets.chomp 

  if name.empty?
    prompt(MESSAGES['name_error'])
  else 
    break 
  end
end

prompt("Hi #{name}!")

loop do # main loop (so that they can ask for another calculation to be performed)
  number1 = '' #initializing the number1 variable outside of the loop so that it can be referenced in the case statement below
  loop do
    prompt(MESSAGES['first_num'])
    number1 = Kernel.gets().chomp()
    # Kernel.puts(number1.inspect())
    # Kernel.puts("the number is: #{number1}!")
    if sci_number?(number1)
      break
    else
      prompt(MESSAGES['num_error'])
    end
  end

  number2 = ''
  loop do
    prompt(MESSAGES['second_num'])
    number2 = gets.chomp

    if sci_number?(number2)
      break
    else
      prompt(MESSAGES['num_error'])
    end
  end

  # ask the user for an operation to perform # the 3 letters after <<- are delimiters and can be anything as long as the match the letters at bottom to end our text
  operator_prompt = <<-pro 
    Which operation would you like to perform? 
    1) add 
    2) subtract 
    3) multiply 
    4) divide
  pro

  prompt(operator_prompt)

  # prompt("Which operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")

  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['op_error'])
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  # perform the operation on the two numbers
  # if operator == '1'
  #   result = number1.to_i + number2.to_i
  # elsif operator == '2'
  #   result = number1.to_i - number2.to_i
  # elsif operator == '3'
  #   result = number1.to_i * number2.to_i
  # else 
  #   result = number1.to_f / number2.to_f 
  # end
    # output the result

  # redid if/else as a case statement so that is easier to read (they both work the same)

  result = case operator
  when '1'
    number1.to_i + number2.to_i
  when '2'
    number1.to_i - number2.to_i
  when '3'
    number1.to_i * number2.to_i
  when '4'
    number1.to_f / number2.to_f 
  end 

  prompt("The result is #{result}")

  prompt(MESSAGES['again'])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt(MESSAGES['bye'])

# note to self that did not attempt bonus challenge #5 -- to have options for users to change their language, go back to 
