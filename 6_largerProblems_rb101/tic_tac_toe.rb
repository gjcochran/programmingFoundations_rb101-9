require "pry"

# description
# tic tac toe is a 2 player game played on a 3x3 board. each player takes a turn and marks a square on the board. first player to reach 3 squares in a row, including diagonals, wins. if all 9 sqaures are marked and no player has 3 squares in a row, then the game is a tie.

# sequence of game play
# 1. display the initial empty 3x3 board
# 2. ask the user to mark a sqaure
# 3. computer marks a sqaure
# 4 display the updated board state
# 5. if winner, disply winner
# 6. if board is full, display tie
# 7. if neither winner nor board is full, go to #2
# 8. play again?
# 9. if yes, go to #1
# 10. thanks for playing

# flow chart
# ttt_flow.drawio

# my attempt before watching videos below:
# board_option_1 = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
# board_option_2 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
# winning_options = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [7, 5, 3]]
# loop do
#   user_marks = []
#   computer_marks = []
#   puts board
#   puts "What is your name?"
#   name = gets.chomp
#   puts "please mark a square by typing in the board number"
#   user_marks << user_mark = gets.chomp.to_i
#   computer_marks << computer_mark = board.sample
#   loop do
#     if winning_options.include?(user_marks)
#       puts "#{name} wins"
#     elsif winning_options.include?(computer_marks)
#       puts "Computer wins"
#     elsif
# end

# # how to display board as a matrix?
# # how to compare the users/computers selections to winning options?
# # how to ensure that user/computer cannot select a board piece that has already been chosen?
# # how to refactor board and display new board if no winner and board not full?

# # gave up and watched videos

#  LS answer below

INITIAL_MARKER = " "
PLAYER_MARKER = "X"
COMPUTER_MARKER = "O"

WINNING_LINES =
  [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
    [[1, 5, 9], [3, 5, 7]]

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  system "clear" # will clear the terminal screen on each iteration
  puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd) # this method determines if the user has chosen an empty sqaure, ie a hash key that still has a value of ' '
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a sqaure (#{empty_squares(brd).join(", ")}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd) # the ! is simply visual so that remember will mutate
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  # empty_squares(brd) == []
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd) # !! will turn this into a boolean
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
  #   if brd[line[0]] == PLAYER_MARKER && brd[line[1]] == PLAYER_MARKER &&
  #        brd[line[2]] == PLAYER_MARKER
  #     return "Player"
  #   elsif brd[line[0]] == COMPUTER_MARKER && brd[line[1]] == COMPUTER_MARKER &&
  #         brd[line[2]] == COMPUTER_MARKER
  #     return "Computer"
  #   end
  # end

    # if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
    #   return 'Player'
    # elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
    #   return 'Computer'
    # end
    
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

loop do
  board = initialize_board

  loop do
    display_board(board)
    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end


prompt 'Thanks for playing!'

