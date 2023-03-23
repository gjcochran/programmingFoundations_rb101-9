VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  puts "=> #{message}"
end

def display_results(player, computer) 
  if (player == 'rock' && computer == 'scissors') ||
      (player == 'paper' && computer == 'rock') ||
      (player == 'scissors' && computer == 'paper')
    prompt 'You won'
  elsif (player == 'rock' && computer == 'paper') ||
        (player == 'paper' && computer == 'scissors') ||
        (player == 'scissors' && computer == 'rock')
    prompt 'computer won'
  else
    prompt 'tie game'
  end
end

loop do
  choice = ''
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')}"
    choice = gets.chomp
    
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt('That is not a valid choice.')
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt "You chose: #{choice}; Computer chose: #{computer_choice}"

  display_results(choice, computer_choice)

  prompt 'do you want to play again?'
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
 
prompt 'Thanks for playing!'
