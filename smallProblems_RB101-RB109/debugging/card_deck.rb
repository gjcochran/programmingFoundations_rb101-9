# original

# cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

# deck = { :hearts   => cards,
#          :diamonds => cards,
#          :clubs    => cards,
#          :spades   => cards }

# def score(card)
#   case card
#   when :ace   then 11
#   when :king  then 10
#   when :queen then 10
#   when :jack  then 10
#   else card
#   end
# end

# # Pick one random card per suit

# player_cards = []
# deck.keys.each do |suit|
#   cards = deck[suit]
#   cards.shuffle!
#   player_cards << cards.pop
# end

# # Determine the score of the remaining cards in the deck

# sum = deck.reduce(0) do |sum, (_, remaining_cards)|
#   remaining_cards.map do |card|
#     score(card)
#   end

#   sum += remaining_cards.sum
# end

# puts sum

# ---------- debugged --------
# getting error because didnt sum += to the result of the map method on the remaining cards array, which is necessary in order to have the case statemetn run and convert symbols to integers
# the sum is less than it should be because we are removing all the picked cards from every suit

cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards.clone,
         :diamonds => cards.clone,
         :clubs    => cards.clone,
         :spades   => cards.clone }
       

def score_v2(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.each do |k, v|
  v.shuffle!
  player_cards << deck[k].pop
end


# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  arr = remaining_cards.map do |card|
    score_v2(card)
  end
  
  sum += arr.sum
end

puts sum

# p cards
# p cards.size
# p player_cards
# p deck[:hearts]
# p deck[:diamonds]
# p deck[:clubs]
# p deck[:spades]
# p deck[:hearts].size
# p deck[:diamonds].size
# p deck[:clubs].size
# p deck[:spades].size

# LS had a nearly identical solution to mine (cloning cards & assigning map to a value which is then added to sum)