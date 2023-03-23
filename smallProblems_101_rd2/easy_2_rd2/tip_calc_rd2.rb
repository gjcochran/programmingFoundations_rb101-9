# prompts: bill amount; tip rate
# compute tip
# display: tip & total bill (w tip added)

def prompt(txt)
  puts "=> #{txt}"
end

prompt "what is the bill?"
bill = gets.chomp.to_f
prompt "what % would you like to tip?"
tip_per = gets.chomp.to_f

tip_am = (bill * tip_per).round(2) / 100 # note that there are multiple ways to do this
total_bill = bill.round(2) + tip_am

prompt "The tip is $#{tip_am} and the total bill is $#{total_bill}"

# Review: good
