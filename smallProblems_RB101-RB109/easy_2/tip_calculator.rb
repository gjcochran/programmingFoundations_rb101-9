# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

# E
# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0

# puts "What is the bill?"
# bill = gets.to_f
# puts "What is the tip percentage?"
# tip_percentage = gets.to_f

# tip = bill * (tip_percentage / 100)
# total = bill + tip

# puts "the tip is $#{tip}"
# puts "the total is $#{total}"

puts "What is the bill?"
bill = gets.to_f
puts "What is the tip percentage?"
tip_percentage = gets.to_f

tip = bill * (tip_percentage / 100)
total = bill + tip

puts "the tip is $#{sprintf("%.2f", tip)}"
puts "the total is $#{sprintf("%.2f", total)}"
