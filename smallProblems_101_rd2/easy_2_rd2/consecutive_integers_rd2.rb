# PROMPT: 
# request: integer > 0 ; sum || product (all nums b/t 1 && int)

def prompt(str)
  puts ">> #{str}"
end

prompt "Integer > 0?"
int = gets.chomp.to_i
prompt "sum or product?"
calc = gets.chomp.downcase

if calc[0] == 's'
  sum = (1..int).sum
  puts "The sum of the integers between 1 and #{int.to_s} is #{sum.to_s}"
elsif
  product = (1..int).reduce(:*)
  puts "The product of the integers between 1 and #{int.to_s} is #{product.to_s}"
else
  puts "invalid inputs"
end

# REVIEW: my solution works well. LS answered slightly different but i think enumerable methods are simpler
# def compute_sum(number)
  #total = 0
  #1.upto(number) { |value| total += value }
 # total
#end

#def compute_product(number)
  #total = 1
 # 1.upto(number) { |value| total *= value }
#  total
#end
