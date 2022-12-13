# VALID_CHOICES = ['rock', 'paper', 'scissors']
VALID_CHOICES = %w(rock paper scissors lizard spock)

# p (VALID_CHOICES[0])[0]

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
    (first == 'paper' && (second == 'rock' || second == 'spock')) ||
    (first == 'scissors' && (second == 'paper' || second == 'lizard')) || 
    (first == 'lizard' && (second == paper || second == 'spock')) ||
    (first == 'spock') && (second == 'scissors' || second == 'rock')
end

# lizard beats paper and spock, lizard loses to rock and scissors 
# spock beats scissors and rock, spock loses to lizard and paper

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won")
  elsif win?(computer, player)
    prompt("Computer won")
  else
    prompt("Tie")
  end
end

player_score = ''
computer_score = ''

def score_tally()
  if display_results(choice, computer_choice) == "You won"
    player_score += 1 
  elsif display_results(choice, computer_choice) == "Computer won"
    computer_score += 1
  end
  prompt("Score is Player: #{player_score}, Computer: #{computer_score}")
end


loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    # .join turns ['rock', 'paper', 'scissors'] into "rock, paper, scissors"
    choice = gets.chomp

    if VALID_CHOICES.include?(choice) #|| choice.downcase.start_with?((VALID_CHOICES[0])[0])
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)
  score_tally
  

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thanks for playing!")
