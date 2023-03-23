# PROMPT:
# gets 2 +Integers
# prints math ops

def prompt(str)
  puts ">> #{str}"
end

prompt "enter the first num:"
n1 = gets.chomp.to_i
prompt "enter the second num:"
n2 = gets.chomp.to_i

sum = n1 + n2
sub = n1 - n2
prod = n1 * n2
div = n1 / n2.to_f
exp = n1 ** n2
mod = n1 % n2

prompt "#{n1} + #{n2} = #{sum}"
prompt "#{n1} - #{n2} = #{sub}"
prompt "#{n1} * #{n2} = #{prod}"
prompt "#{n1} / #{n2} = #{div}"
prompt "#{n1} ** #{n2} = #{exp}"
prompt "#{n1} % #{n2} = #{mod}"

# good
