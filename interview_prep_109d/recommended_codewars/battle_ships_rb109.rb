# Your task in the kata is to determine how many boats are
# sunk damaged and untouched from a set amount of attacks.
#   You will need to create a function that 
# takes two arguments, the playing board and the attacks.

# Boats are placed either horizontally, vertically or diagonally 
# on the board. 0 represents a space not occupied by a boat.
# Digits 1-3 represent boats which vary in length 1-4 spaces long. 
# There will always be at least 1 boat up to a maximum of 3 in any one game. Boat 
# sizes and board dimentions will vary from game to game.

# Attacks are calculated from the bottom left, first the X coordinate then 
# the Y. There will be at least one attack 
# per game, and the array will not contain duplicates.

# 1 point for every whole boat sank.
# 0.5 points for each boat hit at least once (not including boats that are sunk).
# -1 point for each whole boat that was not hit at least once.
 
# ex return hash { 'sunk': 0, 'damaged': 2 , 'not_touched': 1, 'points': 0 }

# example
# board = [ [0, 0, 1, 0],
#           [0, 0, 1, 0],
#           [0, 0, 1, 0] ]
# attacks = [[3, 1], [3, 2], [3, 3]]
# "Game 1 result: { 'sunk': 1, 'damaged': 0 , 'not_touched': 0, 'points': 1}"

###

# input - 2
#   nested array representing game board(with integer elements)
#     number of elements and element sizes vary 
#   nested array representing attacks
#     each subarray is attack coordinates
#     the tricky aspect is...
#       attacks are represented by x/y coordinates as if the board was laid out in a grid...
#     ie if 4x3 board
#       attack [3, 1] would actually be element [2][2]
#       [3, 2] would be [1][2]
#       [3, 3] would be [0][2]
#         ... x - 1 is inner array element
#             outer_arr.size - y is outer array element
#     if 3x4 board 
#       [2, 1] --> [2][1]
#       [2, 2] --> [1][1]
# return - hash with 4 key/value pairs
# rules: up to 3 ships with can are represented by integers
#           ie ship 3 has the int 3 as multiple elements
#        0 means no ship
#        if ship hit at least once is damaged and plus .5 points (not for each hit, for each boat)
#        if sunk hit in every element index and plus 1 point (.5 extra on top of hit)
#        if at end of attack a ship has all elements then minus 1 point

# algo
#   i want to compare the count of 1, 2, and 3 before and after attacks to determine points
#   if a ship is hit, reassign that index to -1
#   iterate over attacks array, reassigning elements on clone of board if hit

def damaged_or_sunk(board, attacks)
  result = Hash.new(0)
  initial_points = board.flatten.reject(&:zero?)
  initial_points = initial_points.map { |n| [n, initial_points.count(n)] }.to_h

  attacks.each do |sub|
    oidx = board.size - sub.last
    iidx = sub.first - 1
    board[oidx][iidx] = 0
  end

  final_points = board.flatten.reject(&:zero?)
  final_points = final_points.map { |n| [n, final_points.count(n)] }.to_h
  damage_total = initial_points.map do |ship, count| 
    if final_points.include?(ship)
      if count - final_points[ship] == 0
        "not_touched"
      else
        "damaged"
      end
    else
      "sunk"
    end
  end

  damage_total = damage_total.map { |el| [el, damage_total.count(el)] }.to_h
  result['sunk'] = damage_total['sunk'] 
  result['damaged'] = damage_total['damaged']
  result['not_touched'] = damage_total['not_touched']
  result = result.map do |k, v|
    v = 0 if v == nil
    [k, v]
  end.to_h
  result['points'] = ((result['sunk'] * 1) + 
                      (result['damaged'] * 0.5) - 
                      (result['not_touched'] * 1))
  result
end

 board1 = [ [0, 0, 1, 0],
           [0, 0, 1, 0],
           [0, 0, 1, 0] ]
 attacks1 = [[3, 1], [3, 2], [3, 3]]

p damaged_or_sunk(board1, attacks1)

board2 = [ [3, 0, 1],
          [3, 0, 1],
          [0, 2, 1], 
          [0, 2, 0] ]

attacks2 = [[2, 1], [2, 2], [ 3, 2], [3, 3]]

p damaged_or_sunk(board2, attacks2)

###
# took me 1 hour 15 mins!

# good codewars answer pasted below for reference...

def damaged_or_sunk_cw(board, attacks)
  hits = attacks.each_with_object(Hash.new(0)) { |(x, y), memo|
    memo[board[-y][x - 1]] += 1
  }

  pieces = board.flatten
  result = %w(sunk damaged not_touched points).product([0]).to_h
  (1..3).each_with_object(result) { |boat, memo|
    length = pieces.count(boat)
    next if length.zero?

    key, points = case hits[boat]
                  when length then ["sunk", 1]
                  when 0 then ["not_touched", -1]
                  else ["damaged", 0.5]
                  end

    memo[key] += 1
    memo["points"] += points
  }
end
