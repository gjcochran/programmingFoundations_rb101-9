# Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

# E
# # buy_fruit([
  #   ["apples", 3], 
    # ["orange", 1], 
    # ["bananas", 2]
#   ]) == ["apples", "apples", "apples", "orange", "bananas","bananas"]

def buy_fruit(array)
  result = []
  array.each do |sub|
    sub.last.times do
      result << sub.first
    end
  end
  result
end

p buy_fruit([
    ["apples", 3], 
    ["orange", 1], 
    ["bananas", 2]
  ])

# LS answer...
# def buy_fruit(list)
#   list.map { |fruit, quantity| [fruit] * quantity }.flatten
# end