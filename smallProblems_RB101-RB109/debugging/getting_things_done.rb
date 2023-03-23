# original

# def move(n, from_array, to_array)
#   to_array << from_array.shift
#   move(n - 1, from_array, to_array)
# end

# # Example

# todo = ['study', 'walk the dog', 'coffee with Tom']
# done = ['apply sunscreen', 'go to the beach']

# move(2, todo, done)

# p todo # should be: ['coffee with Tom']
# p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']

# debugged
# system stack error because recursion set up incorrectly and doesnt stop (need break condition)

def move_v2(n, from_array, to_array)
  to_array << from_array.shift
  move_v2(n - 1, from_array, to_array) unless n == 1
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move_v2(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']

# LS answer similar in function to mine although implemented slightly differently, pasted below for reference

# def move(n, from_array, to_array)
#   return if n == 0
#   to_array << from_array.shift
#   move(n - 1, from_array, to_array)
# end